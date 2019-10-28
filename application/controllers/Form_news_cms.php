<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Form_news_cms extends CI_Controller {
	function Form_news_cms(){
		parent::__construct();
		$this->load->model("Model_cms");
		
	}
		
	function update(){
		$text = $this->input->post('text-news');
		$result=$this->Model_cms->update_news($text);
		redirect(site_url('cms/news'));
	}
}