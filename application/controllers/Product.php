<?php if(!defined("BASEPATH")) exit("Hack Attempt");

class Product extends CI_Controller {


      public function __construct()
      {
              parent::__construct();
              // $this->output->enable_profiler(TRUE);
              $this->load->model('M_products', 'products');
              $this->load->model('M_nav', 'nav');
      }

      //Searching Products
      public function search() {

        $query                  = $this->input->get('search');
        $data['navParent']      = $this->nav->getNavigationParent();
        $data['query_product']  = $this->products->searchProducts($query);
        $data['keyword']        = $query;

        $this->load->view('templates/header', $data);
        $this->load->view('pages/products/search_results', $data);
        $this->load->view('templates/footer');

      }

      public function brand() {

        $brandName = $this->input->get('name');

        $data['navParent']      = $this->nav->getNavigationParent();
        $data['query_product']  = $this->products->selectProducts($brandName);
        $data['query_title']    = $this->products->selectBrandName($brandName);

        $this->load->view('templates/header', $data);
        $this->load->view('pages/products/product_result', $data);
        $this->load->view('templates/footer');

      }

      public function products() {

        $productName = $this->input->get('name');

        $data['navParent']      = $this->nav->getNavigationParent();
        $data['query_product']  = $this->products->selectProducts($productName);
        $data['query_title']    = $this->products->selectProductName($productName);

        $this->load->view('templates/header', $data);
        $this->load->view('pages/products/product_result', $data);
        $this->load->view('templates/footer');

      }

	}
