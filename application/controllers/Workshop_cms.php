<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Workshop_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'workshop';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Workshop';
		$data['workshop'] = $this->Model_cms->select_workshop();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/workshop', $data);
        $this->load->view('templates-cms/footer');
	}
}