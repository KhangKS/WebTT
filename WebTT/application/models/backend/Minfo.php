<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Minfo extends CI_Model {
    
	public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('info');
    }

    public function show($id)
    {
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

    //Cập nhật
    public function update($mydata,$id)
    {
        $this->db->where('id',$id);
        $this->db->update($this->table, $mydata);
    }
}