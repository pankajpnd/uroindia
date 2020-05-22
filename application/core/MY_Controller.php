<?php  defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends MX_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->module('template');
		$this->load->model('dashboard/crud_model');
		//Do your magic here
	}
}

/* End of file MY_Controller.php */
/* Location: ./application/core/MY_Controller.php */
