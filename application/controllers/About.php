<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class About extends CI_Controller {

  public function __construct() {
    parent::__construct();
    $this->load->model('M_nav', 'nav');
    // $this->output->enable_profiler(TRUE);
        // Your own constructor code
  }


    public function about_us() {
      $data['title'] = 'About Us'; // Capitalize the first letter
      $page = 'about';

      $data['navParent'] = $this->nav->getNavigationParent();
      
      $this->load->view('templates/header', $data);
      $this->load->view('pages/about');
      $this->load->view('templates/footer');
    }

    public function vision() {

      $data['title'] = 'About Us'; // Capitalize the first letter
      $page = 'about';

      $data['navParent'] = $this->nav->getNavigationParent();
      
      $this->load->view('templates/header', $data);
      $this->load->view('pages/vision');
      $this->load->view('templates/footer');
    }

    public function customers() {
      $data['title'] = 'Customers'; // Capitalize the first letter
      $page = 'customers';

      $data['navParent'] = $this->nav->getNavigationParent();
      
      $this->load->view('templates/header', $data);
      $this->load->view('pages/customers');
      $this->load->view('templates/footer');
    }
}
