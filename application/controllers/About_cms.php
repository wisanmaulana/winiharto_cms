<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class About_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'about_company';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'About Company';
		$data['about'] = $this->Model_cms->select_about();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/about_company', $data);
        $this->load->view('templates-cms/footer');
	}
}