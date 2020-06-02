<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MiscTopic extends CI_Model 
{
	// get All Doctors
	public function getMiscTopic($misc_type)
	{
		$this->db->order_by('misc_id','asc');
		$this->db->where('misc_status > 0');
		$this->db->where('misc_type',$misc_type);
		$this->db->limit(1);
		$query = $this->db->get('mst_miscellaneous');
		return $query->result();
	}
	
	// get about Us Content
	public function getAboutUs($misc_type,$order)
	{
		$this->db->order_by('misc_id','asc');
		$this->db->where('misc_status > 0');
		$this->db->where('misc_type',$misc_type);
		$this->db->where('misc_order',$order);
		$this->db->limit(1);
		$query = $this->db->get('mst_miscellaneous');
		return $query->result();
	}
	// get Why Us Content
	public function getWhyUs($misc_type,$order)
	{
		$this->db->order_by('misc_id','asc');
		$this->db->where('misc_status > 0');
		$this->db->where('misc_type',$misc_type);
		$this->db->where('misc_order',$order);
		$this->db->limit(1);
		$query = $this->db->get('mst_miscellaneous');
		return $query->result();
	}
}

/* End of file MiscTopic.php */
/* Location: ./application/models/MiscTopic.php */