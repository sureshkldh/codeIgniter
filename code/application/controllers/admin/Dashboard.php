<?php
//ADMIN 
defined('BASEPATH') OR exit('No direct script access allowed');

//session_start();

class Dashboard extends CI_Controller {
	
function index()
	{
		echo "hello";
		echo '<a href="'.base_url('admin/logout').'">Logout</a>';
		
		print_r($this->session->all_userdata());
		
		$message=$this->session->flashdata('message');
		echo $message['flash_message'];
		//$this->load->view('admin/dashboard');
		
		
		
		
		
	}
}	
?>