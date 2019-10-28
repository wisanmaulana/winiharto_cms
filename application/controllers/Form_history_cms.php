<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Form_history_cms extends CI_Controller {
	function Form_history_cms(){
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
		$data['title'] = "Form_history_cms";
		
		$this->load->view('pages-cms/'.$page, $data);
	}
	
	function update(){
		$text = $this->input->post('text-history');
		$result=$this->Model_cms->update_history($text);
		redirect(site_url('cms/history'));
	}
}