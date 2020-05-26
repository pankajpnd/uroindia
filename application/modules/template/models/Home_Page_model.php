<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_Page_model extends CI_Model 
{
	// get All Top Menus
	public function all_top_menus()
	{
		$this->db->order_by('menu_order','asc');
		$this->db->limit(10);
		$this->db->where('menu_status',1);
		$query = $this->db->get('menu_master');
		return $query->result();
	}
}
/* End of file Home_Page_model.php */
/* Location: ./application/models/Home_Page_model.php */