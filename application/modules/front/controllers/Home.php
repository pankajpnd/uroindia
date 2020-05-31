<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller 
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
		$this->load->model(array('Users_modal','Users_groups','common_model','Doctor_team_model','MiscTopic'));
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
		$data['page'] = "front/home_page";
		
		$this->template->template_front($data);
	}
	
	
	public function get_city_by_state()
	{
            $response = [];
            $state_id = $this->input->post('state_id');
            $states = $this->common_model->getAllData('mst_state','state_name','','state_id='.$state_id);
            foreach($states as $state){}
            $cities = $this->common_model->getAllData('mst_city','city_id, city_name','','city_state="'.$state->state_name.'"');
            // echo $this->db->last_query();die;
            foreach($cities as $city){
                    $data['city_id'] 	= $city->city_id;
                    $data['city_name'] 	= $city->city_name;
                    array_push($response, $data);
            }
            echo json_encode($response);
        }
	
	
}

/* End of file Home.php */
/* Location: ./application/modules/front/controllers/Home.php */