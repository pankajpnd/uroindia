<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SupAdm extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();
		//Do your magic here
	    $this->load->module('template'); 
	    $this->load->model('common_model'); 
	    $this->load->library('form_validation'); 

		if (!$this->ion_auth->logged_in()):
		    redirect('users/auth', 'refresh');
		endif;    
		if (!$this->ion_auth->is_admin()): 
	      return show_error("You Must Be An Administrator To View This Page");
	    endif;   
	}

	public function index()
	{
		$data['categories'] = $this->common_model->getAllData('blog_categories','*');
		$data['page'] = "admin/mnews";
  		$this->template->template_backend($data);
	}
	
	public function mnews()
	{
		
		$data['mnews'] = $this->common_model->getAllData('mst_miscellaneous','*','','','misc_id desc');
		//echo $this->db->last_query();
		//die;
		$data['page'] = "admin/mnews";
  		$this->template->template_backend($data);
	}

	public function newssave()
	{
		$data['misc_type']		=	$this->input->post('ntype');
		$data['misc_title']		=	$this->input->post('descr');
		$data['misc_date']		=	date('Y-m-d H:i:s');

		$this->common_model->InsertData('mst_miscellaneous',$data);
		redirect('admin/SupAdm/mnews','refresh');
	}

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