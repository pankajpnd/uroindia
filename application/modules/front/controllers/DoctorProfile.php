<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DoctorProfile extends MY_Controller 
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
		$data['page'] = "front/DoctorProfile";
		
		$this->template->template_front($data);
	}
	
	public function jobpost()
	{
            if ($this->ion_auth->logged_in()){
		$data['page'] = "front/DoctorProfile/job_post";		
		$this->template->template_front($data);
            }else{
                redirect('front/login', 'refresh');
            }
	}
	
	public function insert_jobpost()
	{
            if ($this->ion_auth->logged_in()){
                foreach($this->db->list_fields('job_post') as $field){
                    if(!empty($this->input->post($field))){
                        $data[$field] = $this->input->post($field);
                    }
                }
                $data['jpst_docid'] = $this->session->userdata('user_id');
                $data['jpst_entrydt'] = date("Y-m-d H:i:s");
                $this->common_model->InsertData('job_post',$data);
                header("Location: {$_SERVER["HTTP_REFERER"]}");
            }else{
                redirect('front/login', 'refresh');
            }
	}
	
	public function surgicalvid()
	{
            if ($this->ion_auth->logged_in()){
		$data['page'] = "front/DoctorProfile/surgical_videos";		
		$this->template->template_front($data);
            }else{
                redirect('front/login', 'refresh');
            }
	}
	
	public function insert_videos(){
            if ($this->ion_auth->logged_in()){
                foreach($this->db->list_fields('doc_servid') as $field){
                    if(!empty($this->input->post($field))){
                        $data[$field] = $this->input->post($field);
                    }
                }
                $data['vid_docid'] = $this->session->userdata('user_id');
                $data['vid_entrydt'] = date("Y-m-d H:i:s");
                $this->common_model->InsertData('doc_servid',$data);
                header("Location: {$_SERVER["HTTP_REFERER"]}");
            }else{
                redirect('front/login', 'refresh');
            }
	}
	
	
}

/* End of file Home.php */
/* Location: ./application/modules/front/controllers/Home.php */