<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Distribution extends CI_Controller {

  public function __construct() {
    parent::__construct();
    $this->load->model('M_nav', 'nav');
    // $this->output->enable_profiler(TRUE);
        // Your own constructor code
  }

    public function index(){

      $data['navParent'] = $this->nav->getNavigationParent();
      
      $this->load->view('templates/header', $data);
      $this->load->view('pages/distribution');
      $this->load->view('templates/footer');
    }
}
