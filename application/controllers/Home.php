<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Home extends CI_Controller {

    	public function index()	{
			 $page = 'home';

		   // $data['title'] = ucfirst($page); // Capitalize the first letter
			$this->load->view('templates/header');
			$this->load->view('pages/home/slider');
			$this->load->view('pages/home/about');
			$this->load->view('pages/home/quotes');
			$this->load->view('pages/home/services');
			$this->load->view('pages/home/projects');
			$this->load->view('pages/home/testimony');
			$this->load->view('pages/home/blog');
			$this->load->view('templates/footer');
      }

	}
