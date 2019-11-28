<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Parameter extends CI_Controller{
     
    function __construct(){
        parent::__construct();
        $this->load->model('Model_cms','cms');
    }
 
    // READ
    function index(){
        $data['merk'] = $this->cms->get_merk();
        $data['kategori'] = $this->cms->get_kategori();
        $this->load->view('package_view',$data);
    }
 
    //CREATE
    function create(){
        $package = $this->input->post('package',TRUE);
        $product = $this->input->post('product',TRUE);
        $this->cms->create_package($package,$product);
        redirect('package');
    }
 
    // GET DATA PRODUCT BERDASARKAN PACKAGE ID
    function get_product_by_package(){
        $package_id=$this->input->post('package_id');
        $data=$this->cms->get_product_by_package($package_id)->result();
        foreach ($data as $result) {
            $value[] = (float) $result->product_id;
        }
        echo json_encode($value);
    }
 
    //UPDATE
    function update(){
        $id = $this->input->post('edit_id',TRUE);
        $package = $this->input->post('package_edit',TRUE);
        $product = $this->input->post('product_edit',TRUE);
        $this->cms->update_package($id,$package,$product);
        redirect('package');
    }
 
    // DELETE
    function delete(){
        $id = $this->input->post('delete_id',TRUE);
        $this->cms->delete_package($id);
        redirect('package');
    }
}