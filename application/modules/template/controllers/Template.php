<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template extends MY_Controller 
{

	public function __construct()
	{
		parent::__construct();
		$this->lang->load('company_profile');
		//Do your magic here
	}

	public function template_front($data = NULL)
	{
		$this->load->view('body_front',$data);
	}

	public function template_backend($data = NULL)
	{
		$this->load->view('body_backend',$data);
	}

}

/* End of file Template.php */
/* Location: ./application/modules/template/controllers/Template.php */

/* End of file Template.php */
/* Location: ./application/modules/template/controllers/Template.php */