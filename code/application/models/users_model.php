<?php

class Users_model extends CI_Model {

function __construct()

{

parent::__construct();

$this->load->database("ci_test");

}

public function get_all_users()

{

$query = $this->db->get('users');

return $query->result();

}

}

?>

