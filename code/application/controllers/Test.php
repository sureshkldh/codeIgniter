<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('test');
		
	}

	public function add()
	{
        $PostData = $this->input->post();
       // print_r($PostData);

        $this->db->insert('login',$PostData);
		
		//redirect(base_url("test/"));
		$this->session->set_flashdata('feedback', 'Success message for client to see');
		//redirect('orderManagement/index', 'refresh');
		redirect(base_url("test/"));
		
	}
	
	public function user()
	{

	$query = $this->db->get('login');
	$data['list'] = $query->result();
	$this->load->view('test_index',$data);
	//return $query->result();

	}
	
	public function update($id)
	{
	
	$info= $this->db->where('id',$id)->get('login')->row();
	$this->load->view('update',['info'=>$info]);


	//print_r($info->id);
	//$id =$query->where('login.id',$id);
	//$this->load->view('update',$data);
	
	
	/*$query = $this->db->get('login');
	$data['list'] = $query->result();
	$this->load->view('test_index',$data);
	//return $query->result();
	*/
	
	
	}
	
	public function update_info()
	{
		$post=$this->input->post();
		
		//print_r( $post);
		$this->db->where('id',$post['id']);
		$this->db->update('login', $post);
		redirect(base_url("test/user"));
		
	
	//$this->db->where('login.id',$id);
	//return $this->db->update('users', $data);
	}

	public function delete_info($id)
	{
		$this->db->where('id',$id);
		
		$this->db->delete('login');
		
		redirect(base_url("test/user"));
		
	}
}

