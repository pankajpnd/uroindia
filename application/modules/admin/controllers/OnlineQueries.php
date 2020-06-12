<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class OnlineQueries extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();
		//Do your magic here
	    $this->load->module('template'); 
	    $this->load->library('form_validation'); 
		$this->load->model(array('front/Doctor_team_model','common_model'));
		if (!$this->ion_auth->logged_in()):
		    redirect('users/auth', 'refresh');
		endif;    
		if (!$this->ion_auth->is_admin()): 
	      return show_error("You Must Be An Administrator To View This Page");
	    endif;   
	}

	public function index()
	{
		$data['patients_queries'] = $this->Common_model->getAllData('patients_queries','*','','qry_status>=2');
		$data['page'] = "admin/OnlineQueries";
  		$this->template->template_backend($data);
	}
	public function forwardDoctorQuery()
	{
		$doctor = $_REQUEST['doctor'];
		$qry_id = $_REQUEST['qry_id'];
		$data = array(
				
				'pat_query_id' => $qry_id,
				'dq_doc_id'     => $doctor,
				'dq_entrydt'     => date("Y-m-d H:i:s"),

			);
		$data_update = array(
				
				'qry_status' => 3

			);

			$result = $this->common_model->InsertData('doctors_queries',$data);
			$this->common_model->UpdateDB("patients_queries","qry_id=$qry_id",$data_update);
			if($result) 
	        {
	          echo $msg = "Query Forwarded";
	          // $this->session->set_flashdata('success',$msg);
	          // redirect('admin/OnlineQueries','refresh');
	        } 
	        else 
	        {
	            echo $msg = "Error in Forwarding Query!";
	            // $this->session->set_flashdata('error',$msg);
	            // redirect('admin/OnlineQueries','refresh');
	        }
	}
	
}

/* End of file OnlineQueries.php */
/* Location: ./application/modules/blog/controllers/OnlineQueries.php */