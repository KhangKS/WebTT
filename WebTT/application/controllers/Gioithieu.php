<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gioithieu extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->data['com']='gioithieu';
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcontent');
        $this->load->model('backend/Minfo');
    }
      
	public function index(){
        $this->data['title']='Smart Store - Giới thiệu';
        $this->data['view']='index';
        $this->data['row']=$this->Minfo->show(1);
		$this->load->view('frontend/layout',$this->data);
	}
}

