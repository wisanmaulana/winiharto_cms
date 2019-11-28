<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Subcategory_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'subcategory';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Subcategory';
		$data['subcategory'] = $this->Model_cms->select_subcategory();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/subcategory', $data);
        $this->load->view('templates-cms/footer');
	}

	public function getAddSubcategory()
	{
		$this->load->model("Model_cms");
		$this->load->helper('form');

		$data['select_category'] = $this->Model_cms->select_category();//------- select brand 
	    
		$this->load->view('pages-cms/modal-add-subcategory',$data); //-------- halaman modal nya
	}

	function addSubcategory(){
		 // $this->output->enable_profiler(TRUE);

    	//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms','cms');
		$idSubcategory = $this->input->post('id_subcategory');
		$name = $this->input->post('name');
		$parentCategory = $this->input->post('parent_category');
		$InsertData=$this->cms->add_subcategory($idSubcategory,$name,$parentCategory);

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

		redirect('cms/subcategory');
	}

	public function getEditSubcategory() {
		$this->load->helper('form');
		$id = $this->input->get('id');
		$this->load->model('Model_cms', 'cms');
		$data['subcategory'] = $this->cms->singleSubcategory($id);
		$data['select_category'] = $this->Model_cms->select_category();//------- select brand 
 		$this->load->view('pages-cms/modal-edit-subcategory', $data);
	}

	public function updateCategory(){

		//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms', 'cms');
		$id = $this->input->post('id');
		$idSubcategory = $this->input->post('id_subcategory');
		$name = $this->input->post('name');
		$parentCategory = $this->input->post('parent_category');
		
		$this->cms->update_subcategory($id,$idSubcategory,$name,$parentCategory);

		 redirect('cms/subcategory');
	}

	function deleteSubcategory(){
		$this->load->model('Model_cms', 'cms');

		$id = $this->input->post('deleteSubcategory');
		$this->cms->delete_subcategory($id,'g_brand_subcategory');
		redirect('cms/subcategory');

	}
}