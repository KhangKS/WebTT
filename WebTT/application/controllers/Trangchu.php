<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Trangchu extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mslider');
        $this->load->model('frontend/Mcontent');
        $this->load->model('frontend/Mslider');
        $this->data['com']='trangchu';
    }
        
	public function index()
	{
        $this->data['title'] = 'Smart Store - Điện thoại, Laptop, Link kiện chính hãng';
        $this->data['view'] = 'index';


        $id_camera = 4;
        $limit = 3;
        $list_category_camera = $this->Mcategory->category_listcat($id_camera);
        $number_product_camera = $this->Mproduct->product_chude_count($list_category_camera);
        // Đang xử lý
        $this->data['product_camera'] = $this->Mproduct->product_list_cat_camera($list_category_camera, $limit);
        $this->data['sub_category_camera'] = $this->Mcategory->category_menu($id_camera);
        $this->data['number_product_camera'] = $number_product_camera;

		$this->load->view('frontend/layout', $this->data);
	}
}
