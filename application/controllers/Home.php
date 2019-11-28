<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Home extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('M_nav', 'nav');
		// $this->output->enable_profiler(TRUE);
			// Your own constructor code
	  }

    public function index()	{
		$page = 'home';

		$data['navParent'] = $this->nav->getNavigationParent();
      
      $this->load->view('templates/header', $data);
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
