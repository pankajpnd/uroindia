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

		if (!$this->ion_auth->logged_in()):
		    redirect('users/auth', 'refresh');
		endif;    
		if (!$this->ion_auth->is_admin()): 
	      return show_error("You Must Be An Administrator To View This Page");
	    endif;   
	}

	public function index()
	{
		$data['patients_queries'] = $this->Common_model->getAllData('patients_queries','*');
		$data['page'] = "admin/OnlineQueries";
  		$this->template->template_backend($data);
	}
	// public function changestatus()
	// {
		// $regid = $_REQUEST['regid'];
		// $data['reg_status'] = $_REQUEST['reg_status'];
		// $this->Common_model->edit_record_by_any_id('mst_doctor','reg_id',$regid,$data);
	// }
	
}

/* End of file OnlineQueries.php */
/* Location: ./application/modules/blog/controllers/OnlineQueries.php */