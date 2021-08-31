<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customer extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mcustomer');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');
		$this->load->model('backend/Mrole_has_permission');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='customer';
	}
	
	public function index()
	{
		$this->load->library('pagination');

		$limit = 10;
		$start_index = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
		$config['base_url'] = base_url().'admin/customer/';
		$config['total_rows'] = $this->Mcustomer->customer_count();
		$config['per_page'] = $limit;
		$config['reuse_query_string'] = true;

		$this->data['list']=$this->Mcustomer->customer_all($limit, $start_index, '');
		$this->data['view']='index';
		$this->data['title']='Danh sách khách hàng';

		if (isset($_GET['search'])) {
			$this->data['list'] = $this->Mcustomer->customer_all($limit, $start_index, $_GET['search']);
			$config['total_rows'] = $this->Mcustomer->count_search_customer($_GET['search']);
		}

		$this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();
		$this->load->view('backend/layout', $this->data);
	}

	public function update($id)
	{
		$this->data['row']=$this->Mcustomer->customer_detail($id);
		$this->data['view']='update';
		$this->data['title']='Cập nhật khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcustomer->customer_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/customer/recyclebin');
		$this->data['list']=$this->Mcustomer->customer_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id)
	{
		$row = $this->Morders->orders_customerid($id);
		if(count($row) > 0)
		{
			$this->session->set_flashdata('error', 'Khách hàng đã đặt hàng, không thể xóa !');
			redirect($_POST['url_index'] ,'refresh');
		}
		else
		{
			$mydata= array('trash' => 0);
			$this->Mcustomer->customer_update($mydata, $id);
			$this->session->set_flashdata('success', 'Xóa khách hàng vào thùng rác thành công');
			redirect($_POST['url_index'] ,'refresh');
		}
	}
	public function restore($id)
	{
		$this->Mcustomer->customer_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục khách hàng thành công');
		redirect('admin/customer/recyclebin','refresh');
	}

	public function delete($id)
	{
		$this->Mcustomer->customer_delete($id);
		$this->session->set_flashdata('success', 'Xóa khách hàng thành công');
		redirect('admin/customer/recyclebin','refresh');
	}

}