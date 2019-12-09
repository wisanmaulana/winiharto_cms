<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class About extends CI_Controller {

    public function about_us() {
      $data['title'] = 'About Us'; // Capitalize the first letter
      $page = 'about';

      $this->load->view('templates/header');
      $this->load->view('pages/about');
      $this->load->view('templates/footer');
    }

    public function vision() {

      $data['title'] = 'About Us'; // Capitalize the first letter
      $page = 'about';

      $this->load->view('templates/header');
      $this->load->view('pages/vision');
      $this->load->view('templates/footer');
    }

    public function customers() {
      $data['title'] = 'Customers'; // Capitalize the first letter
      $page = 'customers';

      $this->load->view('templates/header');
      $this->load->view('pages/customers');
      $this->load->view('templates/footer');
    }
}
