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

        $this->data['limit'] = 3;
        $this->data['categories'] = $this->Mcategory->category_menu(0);

		$this->load->view('frontend/layout', $this->data);
	}
}
