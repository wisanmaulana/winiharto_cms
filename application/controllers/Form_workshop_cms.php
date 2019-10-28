<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Form_workshop_cms extends CI_Controller {
	function Form_workshop_cms(){
		parent::__construct();
		$this->load->model("Model_cms");
		
	}
	
	public function index(){
		
		$id=$this->input->get('id', TRUE);
		$data['edit']=$this->M_cms->select_about_detail($id);
		
		
		$page = 'form_abo';
			if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
			// Whoops, we don't have a page for that!
			show_404();
        }
		$data['title'] = "Form_abo_cms";
		
		$this->load->view('pages-cms/'.$page, $data);
	}
	
	function update(){
		$text = $this->input->post('text-workshop');
		$result=$this->Model_cms->update_workshop($text);
		redirect(site_url('cms/workshop'));
	}
}