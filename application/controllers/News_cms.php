<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class News_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'latest_news';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Latest News';
		$data['news'] = $this->Model_cms->select_news();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/latest_news', $data);
        $this->load->view('templates-cms/footer');
	}
}