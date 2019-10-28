<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Distribution extends CI_Controller {

    public function index(){

      $this->load->view('templates/header');
      $this->load->view('pages/distribution');
      $this->load->view('templates/footer');
    }
}
