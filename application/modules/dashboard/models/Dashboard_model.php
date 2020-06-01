<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Dashboard_model extends CI_Model 
{
	// get All Users
	public function count_todays_queries()
	{
		$this->db->select('*');
		$this->db->from('patients_queries');
		return $this->db->count_all_results();
	}

}

/* End of file Dashboard_model.php */
/* Location: ./application/models/Dashboard_model.php */