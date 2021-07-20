<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Role extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Muser');
        $this->load->model('backend/Morders');
        $this->load->model('backend/Mrole_has_permission');
        $this->load->model('backend/Mrole');
        $this->load->model('backend/Mpermission');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='role';
	}
	
	public function index()
	{
		$this->load->library('phantrang');
		$this->load->library('alias');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mrole->role_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/category');
		$this->data['list']=$this->Mrole->get_all($limit, $first);
		$this->data['view']='index';
		$this->data['title']='Quản lý quyền';
		$this->load->view('backend/layout', $this->data);
	}

	public function update($id){
		$this->data['row']=$this->Mrole->show($id);
		$this->data['permissions']=$this->Mpermission->get_all();
		$this->load->library('session');
		$this->load->library('alias');

		if ($_POST) {
			$mydata= $_POST['permission'];

			$this->Mrole_has_permission->update($id, $mydata);
			$this->session->set_flashdata('success', 'Cập nhật quyền thành công');
			redirect('admin/role/','refresh');
		}

		$this->data['view']='update';
		$this->data['title']='Cập nhật quyền';
		$this->load->view('backend/layout', $this->data);
	}
}
