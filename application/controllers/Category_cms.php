<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Category_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'category';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Category';
		$data['category'] = $this->Model_cms->select_category();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/category', $data);
        $this->load->view('templates-cms/footer');
	}

	public function getAddCategory()
	{
		$this->load->helper('form');
		$this->load->view('pages-cms/modal-add-category');
	}

	function addCategory(){

    	//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms','cms');
		$idCategory = $this->input->post('id_category');
		$nameBrand = $this->input->post('name_brand');
		$idBrand = $this->input->post('id_brand');
		$InsertData=$this->cms->add_brand($idCategory,$nameBrand,$idBrand);

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

		redirect('cms/category');
	}

	public function getEditCategory() {
		$this->load->helper('form');
		$id = $this->input->get('id');
		$this->load->model('Model_cms', 'cms');
		$data['category'] = $this->cms->singleCategory($id);
 		$this->load->view('pages-cms/modal-edit-category', $data);
	}

	public function updateCategory(){

		//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms', 'cms');
		$idCategory = $this->input->post('id_category');
		$nameBrand = $this->input->post('name_brand');
		$idBrand = $this->input->post('id_brand');
		
		$this->cms->update_category($idCategory,$nameBrand,$idBrand);

		 redirect('cms/category');
	}

	function deleteCategory(){
		$this->load->model('Model_cms', 'cms');

		$id = $this->input->post('deleteCategory');
		$this->cms->delete_category($id,'w_brand_category');
		redirect('cms/category');

	}
}