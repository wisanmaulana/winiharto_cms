<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class model_cms extends CI_Model {
		//------------------------------------------------------------------------------------------------------------------- LOGIN CMS
  function cms_login($ID, $PASS) {

    	$this->db->select('*');
    	$this->db->from('s_user');
    	$this->db->where('ID', $ID);
    	$this->db->where('PASS', $PASS);

    	$query = $this->db->get();

    	return $query;

  }

  function checkUsername($ID) {

    $this->db->select('*');
    $this->db->from('s_user');
    $this->db->where('ID', $ID);

    $query = $this->db->get();

    return $query;

  }
//-------------------------------------------------------------------------------------------------------------------  ABOUT
        function select_about(){
            $this->db->select('*');
            $this->db->from('g_about_company');
            $this->db->where('REC_ID','1');

            $query = $this->db->get();

            return $query;
        }
        // function select_about_detail($id){
        //     $this->db->where('REC_ID',$id);
        //     return $this->db->get('g_about');

        // }
        function update_about($about) {
            return $this->db->query("update g_about_company set
                                    CONTENT='".$about."'
                                    where REC_ID=1");

         }
//-------------------------------------------------------------------------------------------------------------------  ABOUT
//-------------------------------------------------------------------------------------------------------------------  VISION
        function select_vision(){
            $this->db->select('*');
            $this->db->from('g_vision');
            $this->db->where('REC_ID','1');

            $query = $this->db->get();

            return $query;
        }
        // function select_about_detail($id){
        //     $this->db->where('REC_ID',$id);
        //     return $this->db->get('g_about');

        // }
        function update_vision($vision) {
            return $this->db->query("update g_vision set
                                    CONTENT='".$vision."'
                                    where REC_ID=1");

         }
	
//-------------------------------------------------------------------------------------------------------------------  VISION
//-------------------------------------------------------------------------------------------------------------------  OUR CUSTOMERS
        function select_customers(){
            $this->db->select('*');
            $this->db->from('g_customer');
            $this->db->where('REC_ID','1');

            $query = $this->db->get();

            return $query;
        }
        // function select_about_detail($id){
        //     $this->db->where('REC_ID',$id);
        //     return $this->db->get('g_about');

        // }
        function update_customers($customers) {
            return $this->db->query("update g_customer set
                                    CONTENT='".$customers."'
                                    where REC_ID=1");

        }

        // function add_customers($content){
        //     $query = "INSERT INTO g_customer(CONTENT) values ('".$content."')";
        //         $results = $this->db->query($query);
        //         if($results) return 1;
        //         else return 0;
        //     }
    
//-------------------------------------------------------------------------------------------------------------------  OUR CUSTOMERS
//-------------------------------------------------------------------------------------------------------------------  OUR CUSTOMERS
        function select_workshop(){
            $this->db->select('*');
            $this->db->from('g_workshop');
            $this->db->where('REC_ID','1');

            $query = $this->db->get();

            return $query;
        }
        // function select_about_detail($id){
        //     $this->db->where('REC_ID',$id);
        //     return $this->db->get('g_about');

        // }
        function update_workshop($workshop) {
            return $this->db->query("update g_workshop set
                                    CONTENT='".$workshop."'
                                    where REC_ID=1");

        }

        // function add_customers($content){
        //     $query = "INSERT INTO g_customer(CONTENT) values ('".$content."')";
        //         $results = $this->db->query($query);
        //         if($results) return 1;
        //         else return 0;
        //     }
    
//-------------------------------------------------------------------------------------------------------------------  OUR CUSTOMERS
// --------------------------------- start brand --------------------------------
  function select_brand(){
    $this->db->select('*');
    $this->db->from('g_brand');
    // $this->db->where('is_active','1');

    $query = $this->db->get();

    return $query;
  }

  function add_brand($idBrand, $nameBrand,$descBrand){
    $query = "INSERT INTO w_brand(ID,NAME,DESCRIPTION) values ('".$idBrand."','".$nameBrand."','".$descBrand."')";
    $results = $this->db->query($query);
    if($results) return 1;
    else return 0;
  }

   function update_brand($idBrand, $nameBrand,$descBrand){
            $data = array(
                    'ID' => $idBrand,
                    'NAME' => $nameBrand,
                    'DESCRIPTION' => $descBrand
            );
            $this->db->where('ID', $idBrand);
            $this->db->update('g_brand', $data);
         }

        function delete_brand($idBrand){
            $this->db->where('ID', $idBrand);
            $this->db->delete('g_brand');
        }

         function singleBrand($idBrand) {

          $this->db->select('*');
          $this->db->from('g_brand');
          $this->db->where('ID', $idBrand);

          $query = $this->db->get();

          return $query;
        }

  //       function delete_sections($id){
  //           $this->db->where('test_id', $id);
  //           $this->db->delete('sections');
  //       }
  //       function getSection($id){
  //         $this->db->select('id as section_id');
  //         $this->db->from('sections');
  //         $this->db->where('test_id',$id);

  //         $query = $this->db->get();

  //         return $query;
  //       }

  //       function singleTest($id) {

  //         $this->db->select('*');
  //         $this->db->from('test');
  //         $this->db->where('id', $id);

  //         $query = $this->db->get();

  //         return $query;
  //       }
// --------------------------------- start brand --------------------------------
//-------------------------------------------------------------------------------------------------------------------  History
        function select_history(){
            $this->db->select('*');
            $this->db->from('g_distribution_history');
            $this->db->where('REC_ID','1');

            $query = $this->db->get();

            return $query;
        }
        // function select_about_detail($id){
        //     $this->db->where('REC_ID',$id);
        //     return $this->db->get('g_about');

        // }
        function update_history($history) {
            return $this->db->query("update g_distribution_history set
                                    CONTENT='".$history."'
                                    where REC_ID=1");

         }

//-------------------------------------------------------------------------------------------------------------------  History
//-------------------------------------------------------------------------------------------------------------------News
        function select_news(){
            $this->db->select('*');
            $this->db->from('g_latest_news');
            $this->db->where('REC_ID','1');

            $query = $this->db->get();

            return $query;
        }
        // function select_about_detail($id){
        //     $this->db->where('REC_ID',$id);
        //     return $this->db->get('g_about');

        // }
        function update_news($news) {
            return $this->db->query("update g_latest_news set
                                    CONTENT='".$news."'
                                    where REC_ID=1");

         }

//-------------------------------------------------------------------------------------------------------------------News
// --------------------------------- start category --------------------------------
  function select_category(){
    $this->db->select('*');
    $this->db->from('g_brand_category');
    // $this->db->where('is_active','1');

    $query = $this->db->get();

    return $query;
  }

  function add_category($idCategory, $nameBrand,$idBrand){
    $query = "INSERT INTO g_brand_category(ID,NAME,BRAND_ID) values ('".$idCategory."','".$nameBrand."','".$idBrand."')";
    $results = $this->db->query($query);
    if($results) return 1;
    else return 0;
  }

   function update_category($idCategory, $nameBrand,$idBrand){
            $data = array(
                    'ID' => $idCategory,
                    'NAME' => $nameBrand,
                    'BRAND_ID' => $idBrand
            );
            $this->db->where('ID', $idCategory);
            $this->db->update('g_brand_category', $data);
         }

        function delete_category($idCategory){
            $this->db->where('ID', $idCategory);
            $this->db->delete('g_brand_category');
        }

         function singleCategory($idCategory) {

          $this->db->select('*');
          $this->db->from('g_brand_category');
          $this->db->where('ID', $idCategory);

          $query = $this->db->get();

          return $query;
        }
}
// --------------------------------- start brand --------------------------------