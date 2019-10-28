<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class History_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'distribution_history';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Distribution History';
		$data['history'] = $this->Model_cms->select_history();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/distribution_history', $data);
        $this->load->view('templates-cms/footer');
	}
}