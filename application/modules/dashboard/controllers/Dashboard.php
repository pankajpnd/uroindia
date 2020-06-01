<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		 
	    // $this->load->model('crud_model');  
	    $this->load->library('form_validation');
		$this->load->model(array('Users_modal','Users_groups','common_model'));

		if (!$this->ion_auth->logged_in()):
		    redirect('users/auth', 'refresh');
		endif;

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
		if ($this->ion_auth->is_admin())
		{
			//Count all users
			$data['total_users'] = $this->Users_modal->count_users();

			// set the flash data error message if there is one
			$data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');

			//list the users
			// $data['users'] = $this->ion_auth->users()->result();
			// foreach ($data['users'] as $k => $user)
			// {
			// 	$data['users'][$k]->groups = $this->ion_auth->get_users_groups($user->id)->result();
			// }
			
			//get all users
			$data['all_users'] = $this->Users_modal->all_users();

			$data['today_users'] = $this->Users_modal->recent_users();

			$data['weekly'] = $this->Users_modal->weekly_data();
			
			$data['page'] = "dashboard/dashboard_admin";
      		
		}
		$this->template->template_backend($data);
			
		

	}
}

/* End of file Dashboard.php */
/* Location: ./application/modules/dashboard/controllers/Dashboard.php */