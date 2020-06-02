<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doctor_team_model extends CI_Model 
{
	// get All Doctors
	public function getDoctorTeam($limit)
	{
		$this->db->order_by('reg_order','asc');
		$this->db->where('reg_order > 0');
		$this->db->where('reg_status = 2');
		$this->db->limit($limit);
		$query = $this->db->get('mst_doctor');
		return $query->result();
	}
}

/* End of file Doctor_team_modal.php */
/* Location: ./application/models/Doctor_team_modal.php */