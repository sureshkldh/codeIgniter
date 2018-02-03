<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Welcome extends CI_Controller
{
 function __construct(){
 parent::__construct();
 }

function index($offset = 0)
{
 $this->load->library('table');
 $this->load->library('pagination');
 $this->load->helper('form');
 $this->load->helper('url');
 $this->load->database(); //load library database

// Config setup
$num_rows=$this->db->count_all("login");
 $config['base_url'] = base_url().'index.php/welcome/index';
 $config['total_rows'] = $num_rows;
 $config['per_page'] = 5;
 $config['num_links'] = $num_rows;
 $config['use_page_numbers'] = TRUE;
 $this->pagination->initialize($config);

$data['records']=$this->db->get('login', $config['per_page'],$offset);// take record of the table

$header = array('Id', 'Name','Password'); // create table header

$this->table->set_heading($header);// apply a heading with a header that was created

$this->load->view('welcome_message',$data); // load content view with data taken from the users table
 }

}

?>
<style>
	table {
  padding-bottom: 40px;
}
#body strong, a {
  border: 1px solid gray;
  margin: 9px;
  padding: 6px;
}
</style>