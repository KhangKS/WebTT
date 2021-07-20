<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mpermission extends CI_Model {
	
	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('permission');
	}

	public function get_all()
	{
		$query = $this->db->get($this->table);
        return $query->result_array();
	}
}
