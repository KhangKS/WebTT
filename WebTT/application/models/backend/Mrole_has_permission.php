<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mrole_has_permission extends CI_Model {
	
	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('role_has_permission');
	}

	public function has_permission($role_id, $permission_id)
	{
		$this->db->where('permission_id', $permission_id);
		$this->db->where('role_id', $role_id);
		$query = $this->db->get($this->table);

        if ($query->row_array()) {
        	return 1;
        }

        return 0;
	}

	public function update($id, $mydata) {
		$this->db->where('role_id',$id);
		$this->db->delete($this->table);

		foreach ($mydata as $key => $value) {
        	$this->db->insert($this->table, 
        		[
        			'permission_id' => $key,
        			'role_id' => $id,
        		]);
		}
	}
}
