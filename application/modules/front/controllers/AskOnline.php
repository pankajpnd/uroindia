<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AskOnline extends MY_Controller 
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
            
            $data['states'] = $this->common_model->getAllData('mst_state','*');
            $data['page'] = "front/ask_doctor_online";

            $this->template->template_front($data);
	}
        
	public function save_query()
	{
            if(!empty($this->input->post('query'))){
                $pat_query_data['qry_user_id']   = $this->session->userdata('user_id');
                $pat_query_data['qry_desc'] = $this->input->post('query');
                $pat_query_data['qry_entrydt'] = date("Y-m-d H:i:s");
                $this->common_model->InsertData('patients_queries',$pat_query_data);
                echo json_encode(array('status'=>'success', 'msg'=>'Query Submited Successfully'));
             }else{
                echo json_encode(array('status'=>0, 'msg'=>'Something went wrong !!!'));
             }
	}

	
}

/* End of file AskOnline.php */
/* Location: ./application/modules/front/controllers/AskOnline.php */