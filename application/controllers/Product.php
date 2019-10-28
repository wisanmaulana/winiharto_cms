<?php if(!defined("BASEPATH")) exit("Hack Attempt");

class Product extends CI_Controller {


      public function __construct()
      {
              parent::__construct();
              $this->load->model('Model_product', 'model_product');
      }

      //Searching Products
      public function search() {

        $this->load->view('templates/header');
        $this->load->view('pages/products/industrial/search_results', $data);
        $this->load->view('templates/footer');

      }

      /* NEW BRAND TO SHOW PRODUCTS */
      public function brand_category() {

        $getDetails = $this->uri->segment(3);

        $data['query_product'] = $this->model_product->select_product($getDetails);
        $data['query_title'] = $this->model_product->search_product_title_subcategory($getDetails);

        $this->load->view('templates/header');
        $this->load->view('pages/products/product_result', $data);
        $this->load->view('templates/footer');
      }

      /* NEW BRAND TO SHOW PRODUCTS */
      public function product_category() {
        //$this->output->enable_profiler(TRUE);

        $getDetails = $this->uri->segment(2);

        $data['query_product'] = $this->model_product->select_our_products($getDetails);
        $data['query_title'] = $this->model_product->select_product_title($getDetails);

        $this->load->view('templates/header');
        $this->load->view('pages/products/product_result', $data);
        $this->load->view('templates/footer');
      }

      public function brand_subcategory() {

        $getDetails = $this->uri->segment(2);

        $data['query_product'] = $this->model_product->select_category($getDetails);
        $data['query_title'] = $this->model_product->search_product_title($getDetails);

        $this->load->view('templates/header');
        $this->load->view('pages/products/product_result', $data);
        $this->load->view('templates/footer');

      }

      public function show_products() {

        $getDetails = $this->uri->segment(2);

        $data['query_product'] = $this->model_product->select_product($getDetails);
        $data['query_title'] = $this->model_product->search_product_title($getDetails);

        $this->load->view('templates/header');
        $this->load->view('pages/products/product_result', $data);
        $this->load->view('templates/footer');

      }

      public function show_products_subcategory() {

        $getDetails = $this->uri->segment(2);

        $data['query_product'] = $this->model_product->select_product_by_subcategory($getDetails);
        $data['query_title'] = $this->model_product->search_product_title($getDetails);

        $this->load->view('templates/header');
        $this->load->view('pages/products/product_result', $data);
        $this->load->view('templates/footer');

      }

	}
