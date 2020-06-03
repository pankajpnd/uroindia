<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template extends MY_Controller 
{

	public function __construct()
	{
		parent::__construct();
		$this->lang->load('company_profile');
		$this->load->model(array('Home_Page_model','front/Common_model','front/MiscTopic'));
		//Do your magic here
	}

	public function template_front($data = NULL)
	{
		$data['top_menus'] = $this->Home_Page_model->all_top_menus();
		$data['contact'] = $this->MiscTopic->getMiscTopic('contact');
		$data['address'] = $this->MiscTopic->getMiscTopic('address');
		$data['email'] = $this->MiscTopic->getMiscTopic('email');
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