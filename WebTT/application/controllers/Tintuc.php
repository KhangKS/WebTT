<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tintuc extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mcontent');
        $this->load->model('frontend/Mslider');
        $this->data['com']='tintuc';
    }
				    
	public function index(){
        $aurl= explode('/',uri_string());
		$catlink=$aurl[0];
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcontent->content_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='tin-tuc');
        $this->data['list']=$this->Mcontent->content_list_home($limit,$first);
        $this->data['title']='TMĐT - Tin tức';  
		$this->data['view']='index';

		$this->load->view('frontend/layout',$this->data);
	}

	public function typical_customer_news(){
		$this->load->library('pagination');
        $limit = 10;
        $start_index = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $config['base_url'] = base_url().'khach-hang-tieu-bieu';
        $config['total_rows'] = $this->Mcontent->news_count(2);
        $config['per_page'] = $limit;

		$this->data['list'] = $this->Mcontent->news($limit, $start_index, 2);
        $this->data['view'] = 'index';
		$this->data['title'] = 'TMĐT - Khách hàng tiêu biểu';
        $this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();


		$this->load->view('frontend/layout',$this->data);
	}

	public function recruitment(){
		$this->load->library('pagination');
        $limit = 10;
        $start_index = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $config['base_url'] = base_url().'tuyen-dung';
        $config['total_rows'] = $this->Mcontent->news_count(3);
        $config['per_page'] = $limit;

		$this->data['list'] = $this->Mcontent->news($limit, $start_index, 3);
        $this->data['view'] = 'index';
		$this->data['title'] = 'TMĐT - Tuyển dụng';
        $this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();

		$this->load->view('frontend/layout',$this->data);
	}

	public function news(){
		$this->load->library('pagination');
        $limit = 10;
        $start_index = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $config['base_url'] = base_url().'tin-tuc';
        $config['total_rows'] = $this->Mcontent->news_count(1);
        $config['per_page'] = $limit;

		$this->data['list'] = $this->Mcontent->news($limit, $start_index, 1);
        $this->data['view'] = 'index';
		$this->data['title'] = 'TMĐT - Tin tức';
        $this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();

		$this->load->view('frontend/layout',$this->data);
	}

	public function service(){
		$this->load->library('pagination');
        $limit = 10;
        $start_index = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $config['base_url'] = base_url().'dich-vu';
        $config['total_rows'] = $this->Mcontent->news_count(4);
        $config['per_page'] = $limit;

		$this->data['list'] = $this->Mcontent->news($limit, $start_index, 4);
        $this->data['view'] = 'index';
		$this->data['title'] = 'TMĐT - Dịch vụ';
        $this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();

		$this->load->view('frontend/layout',$this->data);
	}

	public function agriculture(){
		$this->load->library('pagination');
        $limit = 10;
        $start_index = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $config['base_url'] = base_url().'nong-nghiep';
        $config['total_rows'] = $this->Mcontent->news_count(5);
        $config['per_page'] = $limit;

		$this->data['list'] = $this->Mcontent->news($limit, $start_index, 5);
        $this->data['view'] = 'index';
		$this->data['title'] = 'TMĐT - Nông nghiệp';
        $this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();

		$this->load->view('frontend/layout',$this->data);
	}

	public function tipNews(){
		$this->load->library('pagination');
        $limit = 10;
        $start_index = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $config['base_url'] = base_url().'tin-thu-thuat';
        $config['total_rows'] = $this->Mcontent->news_count(7);
        $config['per_page'] = $limit;

		$this->data['list'] = $this->Mcontent->news($limit, $start_index, 7);
        $this->data['view'] = 'index';
		$this->data['title'] = 'TMĐT - Tin thủ thuật';
        $this->pagination->initialize($config);
		$this->data['pagination'] = $this->pagination->create_links();

		$this->load->view('frontend/layout',$this->data);
	}

	public function detail(){
		$aurl = explode('/', uri_string());
		$link = $aurl[1];
		$row = $this->Mcontent->content_get_detail($link);
		$this->data['row']=$row;
		$this->data['title']=$row['title'];
		$this->data['view']='detail';
		$this->load->view('frontend/layout',$this->data);
	}
}
