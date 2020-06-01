<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hospital extends MY_Controller 
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
		$this->load->model(array('users/Users_modal','users/Users_groups','common_model'));
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

	public function index(){
		
        $data['states'] = $this->common_model->getAllData('mst_state','*');
        $data['page'] = "front/hospital";
        
		$this->template->template_front($data);
			

	}
    
    
	public function register_hospital(){        
        
        foreach($this->db->list_fields('mst_hospital') as $field){
            if(!empty($this->input->post($field))){
                $hospital_data[$field] = $this->input->post($field);
            }
			}
			$hospital_data['hosp_order'] = 1;
            $hospital_data['hosp_entrydt'] = date("Y-m-d H:i:s");            
            $first_name = $this->input->post('hosp_name');
            $username   = $this->input->post('hosp_hemail');
            $email      = $this->input->post('hosp_hemail');
            $phone      = $this->input->post('hosp_hmob');
            $password   = $this->input->post('password');
            $gp         = 02;//$this->input->post('group');
            $state      = $this->input->post('hosp_state');
            $city       = $this->input->post('hosp_city');
            
            $path = './uploads';
            if (!is_dir($path))
                mkdir($path);
            $path = './uploads/HospitalPhotos';
            if (!is_dir($path))
                mkdir($path);

            $config['upload_path'] = $path;
            $config['allowed_types'] = 'gif|jpg|png|bmp';
            $config['width'] = 50;
            $config['height'] = 50;
            $config['file_name'] = time() . $first_name;
            $config['file_overwrite'] = true;
            $this->load->library('upload', $config);
            $this->upload->do_upload('hosp_image');
            $data1 = array('upload_data' => $this->upload->data());
            $error = array('error' => $this->upload->display_errors());
            $hospital_data['hosp_image'] = $path . '/' . $data1['upload_data']['file_name'];
            $result = $this->common_model->InsertData('mst_hospital',$hospital_data);
            if($result) {
                
                $group = array($gp);
    
                $additional_data = array(
                    'first_name' => $first_name,
                    'last_name'  => '',
                    'date'       => date('Y-m-d'),  
                    'phone'      => $phone,   
                    'state'      => $state,   
                    'city'       => $city,   
                    'user_type'  => 2,   
                );

                if($this->ion_auth->register($username,$password,$email,$additional_data,$group)){
                    $msg = "Hospital Added Successfully";
                    $this->session->set_flashdata('success',$msg);
                    header("Location: {$_SERVER["HTTP_REFERER"]}");
                }else{
                    $this->session->set_flashdata('message', $this->ion_auth->errors());
                    header("Location: {$_SERVER["HTTP_REFERER"]}");
                }
	        } else {
	            $msg = "Error please contact with administrator!";
	            $this->session->set_flashdata('error',$msg);
	            header("Location: {$_SERVER["HTTP_REFERER"]}");
	        }
            
    }  
	
	// create a new user
	public function create_user()
    {
        $data['title'] = $this->lang->line('create_user_heading');

        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin())
        {
            redirect('auth', 'refresh');
        }

        $tables = $this->config->item('tables','ion_auth');
        $identity_column = $this->config->item('identity','ion_auth');
        $this->data['identity_column'] = $identity_column;

        // validate form input
        $this->form_validation->set_rules('first_name', $this->lang->line('create_user_validation_fname_label'), 'required');
        $this->form_validation->set_rules('last_name', $this->lang->line('create_user_validation_lname_label'), 'required');
        if($identity_column!=='email')
        {
            $this->form_validation->set_rules('identity',$this->lang->line('create_user_validation_identity_label'),'required|is_unique['.$tables['users'].'.'.$identity_column.']');
            $this->form_validation->set_rules('email', $this->lang->line('create_user_validation_email_label'), 'required|valid_email');
        }
        else
        {
            $this->form_validation->set_rules('email', $this->lang->line('create_user_validation_email_label'), 'required|valid_email|is_unique[' . $tables['users'] . '.email]');
        }
        $this->form_validation->set_rules('phone', $this->lang->line('create_user_validation_phone_label'), 'trim');
        $this->form_validation->set_rules('company', $this->lang->line('create_user_validation_company_label'), 'trim');
        $this->form_validation->set_rules('password', $this->lang->line('create_user_validation_password_label'), 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[password_confirm]');
        $this->form_validation->set_rules('password_confirm', $this->lang->line('create_user_validation_password_confirm_label'), 'required');

        if ($this->form_validation->run() == true)
        {
            $email    = strtolower($this->input->post('email'));
            $identity = ($identity_column==='email') ? $email : $this->input->post('identity');
            $password = $this->input->post('password');

            $additional_data = array(
                'first_name' => $this->input->post('first_name'),
                'last_name'  => $this->input->post('last_name'),
                'company'    => $this->input->post('company'),
                'phone'      => $this->input->post('phone'),
            );
        }
        if ($this->form_validation->run() == true && $this->ion_auth->register($identity, $password, $email, $additional_data))
        {
            // check to see if we are creating the user
            // redirect them back to the admin page
            $this->session->set_flashdata('message', $this->ion_auth->messages());
            redirect("auth", 'refresh');
        }
        else
        {
            // display the create user form
            // set the flash data error message if there is one
            $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));

            $this->data['first_name'] = array(
                'name'  => 'first_name',
                'id'    => 'first_name',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('first_name'),
            );
            $this->data['last_name'] = array(
                'name'  => 'last_name',
                'id'    => 'last_name',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('last_name'),
            );
            $this->data['identity'] = array(
                'name'  => 'identity',
                'id'    => 'identity',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('identity'),
            );
            $this->data['email'] = array(
                'name'  => 'email',
                'id'    => 'email',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('email'),
            );
            $this->data['company'] = array(
                'name'  => 'company',
                'id'    => 'company',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('company'),
            );
            $this->data['phone'] = array(
                'name'  => 'phone',
                'id'    => 'phone',
                'type'  => 'text',
                'value' => $this->form_validation->set_value('phone'),
            );
            $this->data['password'] = array(
                'name'  => 'password',
                'id'    => 'password',
                'type'  => 'password',
                'value' => $this->form_validation->set_value('password'),
            );
            $this->data['password_confirm'] = array(
                'name'  => 'password_confirm',
                'id'    => 'password_confirm',
                'type'  => 'password',
                'value' => $this->form_validation->set_value('password_confirm'),
            );

            $this->_render_page('auth/create_user', $this->data);
        }
    }

}

/* End of file Dashboard.php */
/* Location: ./application/modules/dashboard/controllers/Dashboard.php */