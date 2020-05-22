<?php
/**
*
*/
class Common_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}
	

	function Encode_html($str) {
    return trim(stripslashes(htmlentities($str)));
	}

	function Encode($str) {
	    return trim(  htmlentities( $str, ENT_QUOTES ) ) ;
	}

	function Decode($str) {
	    return html_entity_decode(stripslashes($str));
	}

	function Encrypt($password) {
	    return crypt(md5($password), md5($password));
	}

	
	public function socail_login($data,$username,$email,$table)
	{
	  $this->db->where('email',$email);
	  $this->db->limit(1);
	  $users = $this->db->count_all_results($table);

	  if(!isset($users) || $users < 1)
	  {
	    $this->load->helper('string');

	    $password = random_string('alnum',10); // we create a random password for the user...

	    $register_id = $this->ion_auth->register($username,$password,$email,$data,array('2'));

	    // pr($register_id);die();

	    if($register_id)
	    {
	      $this->ion_auth->activate($register_id);
	      $this->ion_auth->login($email,$password, TRUE);
	    }
	  }
	  else
	  {
	    $user = $this->db->where(array('email'=>$email))->limit(1)->get($table)->row();

	    $sess_data = array('identity' => $user->username, 
	    				   'username' => $user->username,
	    				   'email'    => $user->email,
	    				   'user_id'  => $user->id,
	    				   'old_last_login' => $user->last_login);

	    $this->session->set_userdata($sess_data);
	  }
	  return TRUE;
	}

	public function fetch_posts($limit, $start) 
	{
        $this->db->limit($limit, $start);
        $this->db->order_by("id","desc");
        $this->db->where('deleted_at ', "Null");
        $this->db->where('status ', 1);
        $query = $this->db->get("blog_post");

        if ($query->num_rows() > 0) 
        {
            foreach ($query->result() as $row) 
            {
                $data[] = $row;
            }
            return $data;
        }
        return false;
   }
}
?>
