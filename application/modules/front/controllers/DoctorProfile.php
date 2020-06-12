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
	
	public function doc_profile(){
            if ($this->ion_auth->logged_in() && $this->session->userdata('user_type')==3){                
                $doc_id = $this->session->userdata('parent_id');
                $data['profile'] = $this->common_model->getAllData('mst_doctor','*','','reg_id='.$doc_id);
                $data['page'] = "front/DoctorProfile/profile";
                $this->template->template_front($data);                
            }else{
                redirect('front/login', 'refresh');
            }
	}
		
	public function patient_queries(){
            if ($this->ion_auth->logged_in() && $this->session->userdata('user_type')==3){                
                $doc_id = $this->session->userdata('parent_id');
                $data['queries'] = $this->common_model->getAllData('doctors_queries','*','','dq_doc_id='.$doc_id);
                $data['page'] = "front/DoctorProfile/queries";
                $this->template->template_front($data);                
            }else{
                redirect('front/login', 'refresh');
            }
	}
		
	public function edit_detail(){
            if ($this->ion_auth->logged_in() && $this->session->userdata('user_type')==3){                
                $doc_id = $this->session->userdata('parent_id');
                $data['degree'] = $this->common_model->getAllData('mst_degree','*');
                $data['specialty'] = $this->common_model->getAllData('mst_specialty','*');
                $data['states'] = $this->common_model->getAllData('mst_state','*');
                $data['cities'] = $this->common_model->getAllData('mst_city','*');
                $data['profile'] = $this->common_model->getAllData('mst_doctor','*','','reg_id='.$doc_id);
                $data['page'] = "front/DoctorProfile/edit_profile";
                $this->template->template_front($data);                
            }else{
                redirect('front/login', 'refresh');
            }
	}
        public function update_doctor(){        
        
        $dob_day        =   sprintf("%02d",$this->input->post('reg_dob_day'));
        $dob_month      =   sprintf("%02d",$this->input->post('reg_dob_month'));
        $dob_year       =   $this->input->post('reg_dob_year');
        $doc_id = $this->session->userdata('parent_id');
        foreach($this->db->list_fields('mst_doctor') as $field){
            if(!empty($this->input->post($field))){
                $doctor_data[$field] = $this->input->post($field);
            }
        }
        $doctor_data['reg_dob']     = $dob_year.'-'.$dob_month.'-'.$dob_day;
        $_FILES['reg_image']['name'];
        if(!empty($_FILES['reg_image']['name'])){
            $path = './uploads';
            if (!is_dir($path))
                mkdir($path);
            $path = './uploads/DoctorPhotos';
            if (!is_dir($path))
                mkdir($path);

            $config['upload_path'] = $path;
            $config['allowed_types'] = 'gif|jpg|png|bmp';
            $config['width'] = 50;
            $config['height'] = 50;
            $config['file_name'] = time() . $doctor_data['reg_name'] . $_FILES['reg_image']['name'];
            $config['file_overwrite'] = true;
            $this->load->library('upload', $config);
            $this->upload->do_upload('reg_image');
            $data1 = array('upload_data' => $this->upload->data());
            $error = array('error' => $this->upload->display_errors());
            $doctor_data['reg_image'] = $path . '/' . $data1['upload_data']['file_name'];
        }
        $this->common_model->edit_record_by_any_id('mst_doctor','reg_id',$doc_id,$doctor_data);  
        $msg = "Detail Updated Successfully";
        $this->session->set_flashdata('success',$msg);
        redirect('front/DoctorProfile/doc_profile', 'refresh');
    }  
	
	
}

/* End of file Home.php */
/* Location: ./application/modules/front/controllers/Home.php */