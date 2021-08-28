<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hotrokhachhang extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mslider');
        $this->load->model('frontend/Mcontent');
        $this->load->model('frontend/Mslider');
        $this->data['com']='hotrokhachhang';
    }
        
	public function orderGuide()
	{
        $this->data['title'] = 'Smart Store - Hướng dẫn đặt hàng';
        $this->data['view'] = 'order_guide';

		$this->load->view('frontend/layout', $this->data);
	}

    public function rules()
    {
        $this->data['title'] = 'Smart Store - Điều khoản';
        $this->data['view'] = 'rules';

        $this->load->view('frontend/layout', $this->data);
    }
}
