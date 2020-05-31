<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doctors extends MY_Controller 
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
		$data['doctor'] = $this->common_model->getAllData('mst_doctor','*');
		$data['page'] = "admin/doctors";
  		$this->template->template_backend($data);
	}
	
}

/* End of file Doctors.php */
/* Location: ./application/modules/blog/controllers/Doctors.php */