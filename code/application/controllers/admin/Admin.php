<?php 
defined ('BASEPATH') OR exit ('No direct script access allowed');

class admin extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		
	}
	
	
	function index ()
	{
		$this->load->view('admin/index');
	}
	
	function add()
	{
		$postdata = $this->input->post();	
		//print_r($postdata);
		
		echo $username = $postdata['username'];
		echo $password = md5($postdata['password']); 
		
		$condition = "username =" . "'" . $username  . "' AND " . "password =" . "'" . $password. "'";
		
		$this->db->select('*');
		$this->db->from('admin');
		$this->db->where($condition);
		$this->db->limit(1);
		$query = $this->db->get();
		
		if ($query->num_rows() == 1) {
		//return true;
		
		$admin_info = array(
		'username'  => $username,
		'password'  => $password,
		);
		
		$this->session->set_userdata($admin_info);
		$message['flash_status'] = TRUE;
		$message['flash_message']="Welcome to dashboard.";
		$this->session->set_flashdata('message', $message);
		redirect(base_url("admin/dashboard/"));
		
		} else {
		$this->session->set_flashdata('error', 'Please check username and password');
		$name = $_SESSION['name'];
		redirect(base_url("admin"));
		//return false;
		//echo "false";
		} 
	}
}	

?>