<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Warehouse extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('backend/Mproduct');
		$this->load->model('backend/Mcategory');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Mproducer');
		$this->load->model('backend/Morderdetail');
        $this->load->model('backend/Morders');
        $this->load->model('backend/Mrole_has_permission');
        if(!$this->session->userdata('sessionadmin')){
         redirect('admin/user/login','refresh');
        }
        $this->data['user']=$this->session->userdata('sessionadmin');
        $this->data['com']='warehouse';
    }

    public function index(){
        $this->load->library('phantrang');
        $this->load->library('session');
        $limit=10;
        $current=$this->phantrang->PageCurrent();
        $first=$this->phantrang->PageFirst($limit, $current);
        $total=$this->Mproduct->product_sanpham_count();
        $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/warehouse');
        $this->data['list']=$this->Mproduct->product_sanpham($limit,$first);
        $this->data['view']='index';
        $this->data['title']='Quản lý kho';
        $this->load->view('backend/layout', $this->data);
    }
}