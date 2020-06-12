<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class mresume extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();
		//Do your magic here
	    $this->load->module('template'); 
	    $this->load->model('common_model'); 
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
		$data['mresume'] = $this->common_model->getAllData('mst_resume','*');
		$data['page'] = "admin/mresume";
  		$this->template->template_backend($data);
	}
	
	public function changestatus()
	{
		$hosp_id = $_REQUEST['hosp_id'];
		$data['hosp_status'] = $_REQUEST['hosp_status'];
		$this->Common_model->edit_record_by_any_id('mst_hospital','hosp_id',$hosp_id,$data);
	}
}

/* End of file Hospitals.php */
/* Location: ./application/modules/blog/controllers/Hospitals.php */