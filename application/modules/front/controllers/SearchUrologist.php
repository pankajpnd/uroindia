<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SearchUrologist extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		 
	    // $this->load->model('crud_model');  
	    $this->load->library(array('form_validation',"email","facebook"));
		$this->load->helper(array('html','language'));
		$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));

		$this->load->config('ion_auth');

		$this->lang->load('auth');
		$this->load->model(array('Users_modal','Users_groups','common_model'));
		// Include the google api php libraries
		include_once APPPATH."libraries/google-api-php-client/Google_Client.php";
		include_once APPPATH."libraries/google-api-php-client/contrib/Google_Oauth2Service.php";

		// if (!$this->ion_auth->logged_in()):
		    // redirect('users/auth', 'refresh');
		// endif;

		// if (!$this->ion_auth->is_admin()): 
	      // return show_error("You Must Be An Administrator To View This Page");
	    // endif; 
	}

	/**
	 * [Load add new post]
	 * @return [void] 
	 */
	public function index()
	{
		$data['page'] = "front/searchUrologist";
		$data['states'] = $this->common_model->getAllData('mst_state','*','','','state_name');
		$this->template->template_front($data);
	}
	
	public function formSearchDoctor()
	{
	
		$query=" 1 ";
		$state       	=   $this->input->post('state');
		$city     	 	=   $this->input->post('city');
		$doctor       	=   $this->input->post('doctor');
		$clinic       	=   $this->input->post('clinic');
		
		($state!='')?$query.= " reg_state = $state":"";
		($city!='')?$query.= " and reg_city = $city":"";
		($doctor!='')?$query.= " and reg_name like '%$doctor%'":"";
		($clinic!='')?$query.= " and reg_state = $clinic":"";
		// echo $query;
		$data['doctors'] = $this->Common_model->getAllData('mst_doctor','','',$query,'','','','');
		// echo $this->db->last_query();die;
		$this->load->view('front/_searchUrologist',$data);
	}
	
	
}

/* End of file Home.php */
/* Location: ./application/modules/front/controllers/Home.php */