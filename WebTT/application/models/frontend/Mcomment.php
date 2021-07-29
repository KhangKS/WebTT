<?php
class Mcomment extends CI_Model {
    public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('comment');
    }
    
    public function comment_by_product($id)
    {
        $this->db->where('product_id', $id);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function comment_by_post($id)
    {
        $this->db->where('post_id', $id);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function delete($id)
    {
        $this->db->where('id',$id);
        $this->db->delete($this->table);
    }

    public function update($id, $mydata)
    {
        $this->db->where('id',$id);
        $this->db->update($this->table, $mydata);
    }

    public function create($mydata)
    {
        $this->db->insert($this->table,$mydata);
    }
}