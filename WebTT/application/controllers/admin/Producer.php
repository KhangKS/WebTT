<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Producer extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('backend/Mproducer');
		$this->load->model('backend/Mproduct');
        $this->load->model('backend/Muser');
        $this->load->model('backend/Morders');
        $this->load->model('backend/Mrole_has_permission');
		if(!$this->session->userdata('sessionadmin')){
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='producer';
	}

	public function index() {
		$this->load->library('pagination');

        $limit = 10;
        $start_index = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $config['base_url'] = base_url().'admin/producer/';
        $config['total_rows'] = $this->Mproducer->producer_count();
        $config['per_page'] = $limit;
        $config['reuse_query_string'] = true;

		$this->data['list']=$this->Mproducer->producer_all($limit, $start_index, '');
        $this->data['view']='index';
		$this->data['title']='Danh sách nhà cung cấp';

        if (isset($_GET['search'])) {
            $this->data['list'] = $this->Mproducer->producer_all($limit, $start_index, $_GET['search']);
            $config['total_rows'] = $this->Mproducer->count_search_supplier($_GET['search']);
        }

        $this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();
		$this->load->view('backend/layout', $this->data);
	}

	public function insert(){
		$user_role=$this->session->userdata('sessionadmin');
		if($user_role['role']==2){
			redirect('admin/E403/index','refresh');
		}
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('name', 'Tên nhà cung cấp', 'required|is_unique[db_producer.name]');
		$this->form_validation->set_rules('code', 'Mã code', 'required|is_unique[db_producer.code]|alpha_numeric');
		$this->form_validation->set_rules('keyword', 'Từ khóa', 'required');
		if ($this->form_validation->run() == TRUE){
			$mydata= array(
				'name' =>$_POST['name'], 
				'code'=>$_POST['code'], 
				'keyword'=>$_POST['keyword'], 
				'created_at'=>$today,
				'created_by'=>$this->session->userdata('id'),
				'modified'=>$today,
				'modified_by'=>$this->session->userdata('id'),
				'trash'=>1,
				'status'=>$_POST['status']
			);
			$this->Mproducer->producer_insert($mydata);
			$this->session->set_flashdata('success', 'Thêm nhà cung cấp thành công');
			redirect('admin/producer','refresh');
		}else{
			$this->data['view']='insert';
			$this->data['title']='Thêm nhà cung cấp';
        	$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id){
		$user_role=$this->session->userdata('sessionadmin');
		if($user_role['role']==2){
			redirect('admin/E403/index','refresh');
		}
		$this->data['row']=$this->Mproducer->producer_detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('name', 'Tên nhà cung cấp', 'required');
		$this->form_validation->set_rules('keyword', 'Từ khóa', 'required');
		if ($this->form_validation->run() == TRUE) {
			$mydata= array(
				'name' =>$_POST['name'], 
				'modified'=>$today,
				'keyword'=>$_POST['keyword'], 
				'modified_by'=>$this->session->userdata('id'),
				'trash'=>1,
				'status'=>$_POST['status']
			);
			$this->Mproducer->producer_update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật nhà cung cấp thành công');
			redirect('admin/producer/','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật nhà cung cấp';
		$this->load->view('backend/layout', $this->data);
	}

	public function status($id){
		$row=$this->Mproducer->producer_detail($id);
		$status=($row['status']==1)?0:1;
		$mydata= array('status' => $status);
		$this->Mproducer->producer_update($mydata, $id);
		$this->session->set_flashdata('success', 'Cập nhật nhà cung cấp thành công');
		redirect('admin/producer/','refresh');
	}

	public function recyclebin(){
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mproducer->producer_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/producernt/recyclebin');
		$this->data['list']=$this->Mproducer->producer_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác nhà cung cấp';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id){
		$count_product = $this->Mproduct->number_product_by_producer($id);
		if($count_product > 0)
		{
			$this->session->set_flashdata('error', 'Nhà cung cấp này còn sản phẩm bên trong! Hãy xóa sản phẩm trước !');
			redirect('admin/producer','refresh');
		}

		$mydata= array('trash' => 0);
		$this->Mproducer->producer_update($mydata, $id);
		$this->session->set_flashdata('success', 'Xóa nhà cung cấp vào thùng rác thành công');
		redirect('admin/producer','refresh');
	}

	public function restore($id)
	{
		$this->Mproducer->producer_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục nhà cung cấp thành công');
		redirect('admin/producer/recyclebin','refresh');
	}
	public function delete($id)
	{
		$number_product = $this->Mproduct->number_product_by_producer($id);

		if($number_product > 0) {
			$this->session->set_flashdata('error', 'Đang có sản phẩm thuộc nhà cung cấp này! Xóa nhà cung cấp thất bại');
		}
		else {
			$this->Mproducer->producer_delete($id);
			$this->session->set_flashdata('success', 'Xóa nhà cung cấp thành công');
		}
		
		redirect('admin/producer/recyclebin','refresh');
	}

}
