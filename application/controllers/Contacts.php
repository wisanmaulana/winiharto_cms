<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Contacts extends CI_Controller {

    public function index(){

      $this->load->view('templates/header');
      $this->load->view('pages/contacts');
      $this->load->view('templates/footer');
    }
}
