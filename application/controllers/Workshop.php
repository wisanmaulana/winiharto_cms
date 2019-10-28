<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Workshop extends CI_Controller {

    public function index(){

      $this->load->view('templates/header');
      $this->load->view('pages/workshop');
      $this->load->view('templates/footer');
    }
}
