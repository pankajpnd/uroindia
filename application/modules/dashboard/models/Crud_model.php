<?php
/**
*
*/
class Crud_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}
	function InsertData($table,$Data)
	{
		$Insert = $this->db->insert($table,$Data);
		if ($Insert):
			return true;
		endif;
	}
	function getAllData($table,$specific='',$row='',$Where='',$order='',$limit='',$groupBy='',$like = '')
	{
		// If Condition
		if (!empty($Where)):
			$this->db->where($Where);
		endif;
		// If Specific Columns are require
		if (!empty($specific)):
			$this->db->select($specific);
		else:
			$this->db->select('*');
		endif;

		if (!empty($groupBy)):
			$this->db->group_by($groupBy);
		endif;
		// if Order
		if (!empty($order)):
			$this->db->order_by($order);
		endif;
		// if limit
		if (!empty($limit)):
			$this->db->limit($limit);
		endif;

		//if like
		if(!empty($like)):
			$this->db->like($like);
		endif;	
		// get Data
		
		//if select row
		if(!empty($row)):
			$GetData = $this->db->get($table);
			return $GetData->row();
		else:
			$GetData = $this->db->get($table);
			return $GetData->result();
		endif;	
	}
	function UpdateDB($table,$Where,$Data)
	{
		$this->db->where($Where);
		$Update = $this->db->update($table,$Data);
		if ($Update):
			return true;
		else:
			return false;
		endif;
	}
	function Authentication($table,$data)
	{
		$this->db->where($data);
		$query = $this->db->get($table);
		if ($query) {
			return $query->row();
		}
		else
		{
			return false;
		}
	}
	function DJoin($field,$tbl,$jointbl1,$Joinone,$row='',$jointbl3='',$Where='',$order='',$groupy = '',$limit = '',$query = '')
    {
        $this->db->select($field);
        $this->db->from($tbl);
        $this->db->join($jointbl1,$Joinone);
        if (!empty($jointbl3)):
            foreach ($jointbl3 as $Table => $On):
                $this->db->join($Table,$On);
            endforeach;
        endif;
        // if Group
		if (!empty($groupy)):
			$this->db->group_by($groupy);
		endif;
        if(!empty($order)):
            $this->db->order_by($order);
        endif;
        if(!empty($Where)):
            $this->db->where($Where);
        endif;
        if(!empty($limit)):
            $this->db->limit($limit);
        endif;
        
        if(!empty($query)):
            $this->db->like($like, $query);
        endif;

        if(!empty($row)):
			$query = $this->db->get();
			return $query->row();
		else:
	        $query=$this->db->get();
	        return $query->result();
	    endif;	    

    }
    function DeleteDB($table,$where)
    {
    	$this->db->where($where);
    	$done = $this->db->delete($table);
    	if ($done) {
    		return true;
    	}
    	else
    	{
    		return false;
    	}
    }
}
?>
