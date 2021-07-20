<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mrole extends CI_Model {
	
	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('usergroup');
	}

	public function get_all($limit, $first)
	{
		$query = $this->db->get($this->table,$limit,$first);
        return $query->result_array();
	}

	public function show($id)
    {
    	$this->db->where('id',$id);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

	// Đếm phân trang
	public function role_count()
	{
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}
}
