<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Brand_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'brand';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Our Brands';
		$data['brand'] = $this->Model_cms->select_brand();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/brand', $data);
        $this->load->view('templates-cms/footer');
	}

	public function getAddBrand()
	{
		$this->load->helper('form');
		$this->load->view('pages-cms/modal-add-brand');
	}

	function addBrand(){

    	//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms','cms');
		$idBrand = $this->input->post('id_brand');
		$nameBrand = $this->input->post('name_brand');
		$descBrand = $this->input->post('desc_brand');
		$InsertData=$this->cms->add_brand($idBrand,$nameBrand,$descBrand);

		// --------- alert -------------
		$message="Success for insert data Test !!!";
		if($InsertData){
			$message="Successfully for insert data Test !!!";
			$session = array('msg' => 'success','message'=>$message);
		}
		else{
			$message="Error for insert data Test !!!";
			$session = array('msg' => 'error','message'=>$message);
		}
		$this->session->set_userdata($session);

		redirect('cms/brand');
	}

	public function getEditBrand() {
		$this->load->helper('form');
		$id = $this->input->get('id');
		$this->load->model('Model_cms', 'cms');
		$data['brand'] = $this->cms->singleBrand($id);
 		$this->load->view('pages-cms/modal-edit-brand', $data);
	}

	public function updateBrand(){

		//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms', 'cms');
		$idBrand = $this->input->post('id_brand');
		$nameBrand = $this->input->post('name_brand');
		$descBrand = $this->input->post('desc_brand');
		
		$this->cms->update_brand($idBrand,$nameBrand,$descBrand);

		 redirect('cms/brand');
	}

	function deleteBrand(){
		$this->load->model('Model_cms', 'cms');

		$id = $this->input->post('deleteBrand');
		$this->cms->delete_brand($id,'w_brand');
		redirect('cms/brand');

	}
}