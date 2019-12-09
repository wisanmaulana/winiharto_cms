<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Customers extends CI_Controller {

    public function index(){

      $this->load->view('templates/header');
      $this->load->view('pages/customers');
      $this->load->view('templates/footer');
    }
}
