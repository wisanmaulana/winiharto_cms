<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Our_Products_cms extends CI_Controller {

	public function index(){
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$page = 'our_products';
		        if ( ! file_exists(APPPATH.'/views/pages-cms/'.$page.'.php'))
        {
                // Whoops, we don't have a page for that!
                show_404();
        }

		$data['page'] = 'Our Products';
		$data['our_products'] = $this->Model_cms->select_our_products();
	    
	    $this->load->view('templates-cms/header', $data);
        $this->load->view('templates-cms/navbar');
        $this->load->view('pages-cms/our_products', $data);
        $this->load->view('templates-cms/footer');
	}

	public function getAddProducts()
	{
		$this->load->model("Model_cms");
		$this->load->helper('form');
		$data['select_brand'] = $this->Model_cms->select_brand();//------- select brand
		$data['select_category'] = $this->Model_cms->select_category();//------- select brand
		$data['select_subcategory'] = $this->Model_cms->select_subcategory();//------- select brand
		$this->load->view('pages-cms/modal-add-products',$data);
	}

	function addProducts(){

		function random($panjang_karakter){
    		$karakter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz';
    		$string = '';
    		for($i = 0; $i < $panjang_karakter; $i++){
    			$pos = rand(0, strlen($karakter)-1);
    			$string .= $karakter{$pos};
    		}
    		return $string;
    	}

    	$this->load->library('upload');


    	//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms','cms');
		$config['upload_path'] = './upload/image';
		$config['allowed_types'] = 'jpeg|jpg|png';
		$config['max_size'] = '9999999';
		$config['min_size'] = '80';
		$file_ext = trim(strtolower(pathinfo($_FILES['file_image']['name'], PATHINFO_EXTENSION)));
		$config['file_name'] = "IMAGE_".random(8).".".$file_ext;
		$this->upload->initialize($config);
		$this->upload->do_upload('file_image');
		$upload_data=$this->upload->data();

		$img = 'file_image';
		$img_path = './upload/image/'.$upload_data['file_name'];

		$image = $img_path;

		$name = $this->input->post('name');
		$productID = $this->input->post('product_id');
		$productBrand = $this->input->post('product_brand');
		$productCategory = $this->input->post('product_category');
		$productSubcategory = $this->input->post('product_subcategory');
		$productSummary = $this->input->post('summary_product');
		$InsertData=$this->cms->add_products($name,$productID,$productBrand,$productCategory,$productSubcategory,$productSummary,$image);

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

		redirect('cms/our_products');
	}

	public function getEditProducts() {
		$this->load->helper('form');
		$id = $this->input->get('id');
		$this->load->model('Model_cms', 'cms');
		$data['our_products'] = $this->cms->singleProducts($id);
		$data['select_brand'] = $this->Model_cms->select_brand();//------- select brand
		$data['select_category'] = $this->Model_cms->select_category();//------- select brand
		$data['select_subcategory'] = $this->Model_cms->select_subcategory();//------- select brand
 		$this->load->view('pages-cms/modal-edit-products', $data);
	}

	public function updateProducts(){

		function random($panjang_karakter){
    		$karakter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz';
    		$string = '';
    		for($i = 0; $i < $panjang_karakter; $i++){
    			$pos = rand(0, strlen($karakter)-1);
    			$string .= $karakter{$pos};
    		}
    		return $string;
    	}

    	$this->load->library('upload');

		//date_default_timezone_set('Asia/Jakarta');

		$this->load->model('Model_cms', 'cms');
		$id = $this->input->post('id');
		$name = $this->input->post('name');
		$productID = $this->input->post('product_id');
		$productBrand = $this->input->post('product_brand');
		$productCategory = $this->input->post('product_category');
		$productSubcategory = $this->input->post('product_subcategory');
		$productSummary = $this->input->post('summary_product');

		if(empty($_FILES['file_image']['name'])){
		//echo"kosong";
			$this->cms->update_produk($name,$productID,$productBrand,$productCategory,$productSubcategory,$productSummary);
		}
		else{
		//echo"isi";
		$this->load->helper("file");
		$select_image=$this->cms->singleProducts($id);
		foreach($select_image->result() as $key);
		$image_lama=$key->IMAGE;
		$deletefile=unlink($image_lama);
		//$deletefile=delete_files($audio_lama);
		if($deletefile){
			echo"berhasil";
		}
		else{
			echo"gagal";
		}
		
		$config['upload_path'] = './upload/image';
		$config['allowed_types'] = 'jpeg|jpg|png';
		$file_ext = trim(strtolower(pathinfo($_FILES['file_image']['name'], PATHINFO_EXTENSION)));
		$config['file_name'] = "IMAGE_".random(8).".".$file_ext;

		$this->upload->initialize($config);

		$defaultPath = './upload/image/'.$config['file_name'];
		$image = $defaultPath;

		$this->cms->update_products($id,$name,$productID,$productBrand,$productCategory,$productSubcategory,$productSummary,$image);

		$img = 'file_image';

		if( ! $this->upload->do_upload('file_image')){
			echo $this->upload->display_errors();
		}else{
			$this->upload->data();
			redirect('cms/our_products');
		}
	}

		$message="Success for insert data Test";
		$session = array('success' => '1','message'=>$message);
		$this->session->set_userdata($session);

		 redirect('cms/our_products');
		
		// $this->cms->update_products($id,$name,$productID,$productBrand,$productCategory,$productSubcategory,$productSummary);

		//  redirect('cms/our_products');
	}

	function deleteProducts(){
		$this->load->model('Model_cms', 'cms');

		$id = $this->input->post('deleteProducts');
		$this->cms->delete_products($id,'p_new_products');
		redirect('cms/our_products');

	}
}