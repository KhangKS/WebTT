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
        $this->load->library('session');
        $this->load->library('pagination');

        $limit = 10;
        $start_index = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $config['base_url'] = base_url().'admin/warehouse/';
        $config['total_rows'] = $this->Mproduct->product_sanpham_count();
        $config['per_page'] = $limit;
        $config['reuse_query_string'] = true;

        $this->data['list'] = $this->Mproduct->all_product($limit, $start_index, '');
        $this->data['view']='index';
        $this->data['title']='Quản lý kho';

        if (isset($_GET['search'])) {
            $this->data['list'] = $this->Mproduct->all_product($limit, $start_index, $_GET['search']);
            $config['total_rows'] = $this->Mproduct->count_search_product($_GET['search']);
        }

        $this->pagination->initialize($config);
        $this->data['pagination'] = $this->pagination->create_links();
        $this->load->view('backend/layout', $this->data);
    }
}