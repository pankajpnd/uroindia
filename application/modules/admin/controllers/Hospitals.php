<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hospitals extends MY_Controller 
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
		$data['hospital'] = $this->common_model->getAllData('mst_hospital','*');
		$data['page'] = "admin/hospitals";
  		$this->template->template_backend($data);
	}
	
}

/* End of file Hospitals.php */
/* Location: ./application/modules/blog/controllers/Hospitals.php */