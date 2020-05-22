<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Employee extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();
		//Do your magic here 
	    $this->load->model('users/common_model');
		
		
	    $this->load->library('form_validation');
		if (!$this->ion_auth->logged_in()):
		    redirect('users/auth', 'refresh');
		endif;    
		if (!$this->ion_auth->is_admin()): 
	      return show_error("You Must Be An Administrator To View This Page");
	    endif;   
		
	}

	/**
	 * [Load Categories]
	 * @return [void]
	 */
	public function index()
	{
		// getting employee
		$data['employee'] = $this->crud_model->getAllData('employee','*');

		$data['page'] = "employee/employee_list";
  		$this->template->template_backend($data);
	}
	public function registration()
	{
		// getting categories
		$data['employee'] = $this->crud_model->getAllData('employee','*');

		$data['page'] = "employee/registration";
  		$this->template->template_backend($data);
	}

	public function id_card()
	{
		$data['page'] = "employee/id_card";
  		$this->template->template_backend($data);
	}

	/**
	 * [add new employee to employee_list]
	 * @return [void]
	 */
	public function add()
	{
		$this->form_validation->set_rules('first_name', 'Employee First Name','trim|required');
		
		if ($this->form_validation->run() == FALSE) 
		{
			$this->index();
		} 
		else 
		{
			
			$data = array(
							
							'emp_first_name' => post('first_name'),

						 );
		
			$result = $this->common_model->InsertData('employee',$data);

			if($result) 
	        {
	          $msg = "Employee Added";
	          $this->session->set_flashdata('success',$msg);
	          redirect('employee/id_card',$data);
	        } 
	        else 
	        {
	            $msg = "Error please contact with administrator!";
	            $this->session->set_flashdata('error',$msg);
	            redirect('employee/employee_registration','refresh');
	        }
		}
	}

	/**
	 * [delete category]
	 * @return [True]
	 */
	public function delete($id)
	{
		$result = $this->common_model->DeleteDB('blog_categories',array('id' => $id));

		if($result) 
        {
          $msg = "Category Deleted Successfully";
          $this->session->set_flashdata('success',$msg);
          redirect('blog/BlogCategory','refresh');
        } 
        else 
        {
            $msg = "Error please contact with administrator!";
            $this->session->set_flashdata('error',$msg);
            redirect('blog/BlogCategory','refresh');
        }
	}

	/**
	 * [update category]
	 * @return [void]
	 */
	public function update()
	{
		$data = array(
						'cat_name'   => post('cat'), 
						'updated_at' => date('Y-m-d H:i:s'), 
					 );

		$result = $this->common_model->UpdateDB('blog_categories',array('id' => post('id')),$data);

		if($result) 
        {
          $msg = "Category Updated Successfully";
          $this->session->set_flashdata('success',$msg);
          redirect('blog/BlogCategory','refresh');
        } 
        else 
        {
            $msg = "Error please contact with administrator!";
            $this->session->set_flashdata('error',$msg);
            redirect('blog/BlogCategory','refresh');
        }
	}
}

/* End of file BlogCategory.php */
/* Location: ./application/modules/blog/controllers/BlogCategory.php */