<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Minfo');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');
		$this->load->model('backend/Mrole_has_permission');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='info';
	}
	
	public function index($id=1)
	{
		$this->data['row']=$this->Minfo->show($id);

		$this->load->library('form_validation');
		$this->load->library('session');	
		$this->form_validation->set_rules('fullname', 'Tên đầy đủ', 'required|alpha_numeric');
		$this->form_validation->set_rules('abbreviation_name', 'Tên viết tắt', 'required|alpha_numeric');
		$this->form_validation->set_rules('address', 'Địa chỉ', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('office', 'Văn phòng', 'required');
		$this->form_validation->set_rules('phone', 'Số điện thoại', 'required');
		$this->form_validation->set_rules('tax_code', 'Mã số thuế', 'required');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'fullname' =>$_POST['fullname'], 
				'abbreviation_name'=>$_POST['abbreviation_name'],
				'address'=>$_POST['address'],
				'email'=>$_POST['email'],
				'office'=>$_POST['office'], 
				'phone'=>$_POST['phone'],
				'description'=>$_POST['description'],
				'tax_code'=>$_POST['tax_code'],
			);
			
			$this->Minfo->update($mydata,$id);
			$this->session->set_flashdata('success', 'Cập nhật thông tin thành công');
			redirect('admin/info/index','refresh');
		} 
		$this->data['view']='index';
		$this->data['title']='Thông tin';
		$this->load->view('backend/layout', $this->data);
	}
}