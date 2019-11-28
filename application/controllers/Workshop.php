<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Workshop extends CI_Controller {

  public function __construct() {
          parent::__construct();
          $this->load->model('M_nav', 'nav');
          $this->load->model('Model_product', 'model_product');
  }

  public function index(){

    $data['navParent'] = $this->nav->getNavigationParent();
      
    $this->load->view('templates/header', $data);
    $this->load->view('pages/workshop');
    $this->load->view('templates/footer');
  }
  
}
