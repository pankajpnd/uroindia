<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hospital_model extends CI_Model 
{
	// get All Hospitals
	public function get_Reg_Hospitals($limit)
	{
		$this->db->order_by('hosp_order','asc');
		$this->db->where('hosp_order > 0');
		$this->db->where('hosp_status = 2');
		$this->db->limit($limit);
		$query = $this->db->get('mst_hospital');
		return $query->result();
	}
}

/* End of file Hospital_model.php */
/* Location: ./application/models/Hospital_model.php */