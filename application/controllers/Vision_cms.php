<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Vision_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'vision_mission';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Vision & Mission';
		$data['vision'] = $this->Model_cms->select_vision();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/vision_mission', $data);
        $this->load->view('templates-cms/footer');
	}
}