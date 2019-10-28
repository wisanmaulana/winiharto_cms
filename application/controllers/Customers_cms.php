<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Customers_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'our_customers';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Our Customers';
		$data['customers'] = $this->Model_cms->select_customers();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/our_customers', $data);
        $this->load->view('templates-cms/footer');
	}

	// public function getAddCustomers()
	// {
	// 	$this->load->helper('form');
	// 	$this->load->view('pages-cms/modal-add-customers');
	// }

	// function addCustomers(){

 //    	date_default_timezone_set('Asia/Jakarta');

	// 	$this->load->model('Model_cms','cms');
	// 	$content = $this->input->post('customers_name');
	// 	$InsertData=$this->cms->add_customers($content);

	// 	// --------- alert -------------
	// 	$message="Success for insert data Test !!!";
	// 	if($InsertData){
	// 		$message="Successfully for insert data Customers !!!";
	// 		$session = array('msg' => 'success','message'=>$message);
	// 	}
	// 	else{
	// 		$message="Error for insert data Customers !!!";
	// 		$session = array('msg' => 'error','message'=>$message);
	// 	}
	// 	$this->session->set_userdata($session);

	// 	redirect('cms/customer');
	// }
}