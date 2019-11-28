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
    $query = "INSERT INTO g_brand(ID,NAME,DESCRIPTION) values ('".$idBrand."','".$nameBrand."','".$descBrand."')";
    $results = $this->db->query($query);
    if($results) return 1;
    else return 0;
  }

   function update_brand($id,$idBrand, $nameBrand,$descBrand){
            $data = array(
                    'ID' => $idBrand,
                    'NAME' => $nameBrand,
                    'DESCRIPTION' => $descBrand
            );
            $this->db->where('REC_ID', $id);
            $this->db->update('g_brand', $data);
         }

        function delete_brand($id){
            $this->db->where('REC_ID', $id);
            $this->db->delete('g_brand');
        }

         function singleBrand($id) {

          $this->db->select('*');
          $this->db->from('g_brand');
          $this->db->where('REC_ID', $id);

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

  function add_category($idCategory,$nameBrand,$idBrand){
    $query = "INSERT INTO g_brand_category(ID,NAME,BRAND_ID) values ('".$idCategory."','".$nameBrand."','".$idBrand."')";
    $results = $this->db->query($query);
    if($results) return 1;
    else return 0;
  }

  function update_category($id,$idCategory,$nameBrand,$idBrand){
            $data = array(
                    'ID' => $idCategory,
                    'NAME' => $nameBrand,
                    'BRAND_ID' => $idBrand
            );
            $this->db->where('REC_ID', $id);
            $this->db->update('g_brand_category', $data);
         }

        function delete_category($id){
            $this->db->where('REC_ID', $id);
            $this->db->delete('g_brand_category');
        }

         function singleCategory($id) {

          $this->db->select('*');
          $this->db->from('g_brand_category');
          $this->db->where('REC_ID', $id);

          $query = $this->db->get();

          return $query;
        }
// --------------------------------- end category --------------------------------
// --------------------------------- start subcategory --------------------------------
  function select_subcategory(){
    $this->db->select('*');
    $this->db->from('g_brand_subcategory');
    // $this->db->where('is_active','1');

    $query = $this->db->get();

    return $query;
  }

  function add_subcategory($idSubcategory,$name,$parentCategory){
    $query = "INSERT INTO g_brand_subcategory(ID,NAME,PARENT_CATEGORY) values ('".$idSubcategory."','".$name."','".$parentCategory."')";
    $results = $this->db->query($query);
    if($results) return 1;
    else return 0;
  }

  function update_subcategory($id,$idSubcategory,$name,$parentCategory){
            $data = array(
                    'ID' => $idSubcategory,
                    'NAME' => $name,
                    'PARENT_CATEGORY' => $parentCategory
            );
            $this->db->where('REC_ID', $id);
            $this->db->update('g_brand_subcategory', $data);
         }

        function delete_subcategory($id){
            $this->db->where('REC_ID', $id);
            $this->db->delete('g_brand_subcategory');
        }

         function singleSubcategory($id) {

          $this->db->select('*');
          $this->db->from('g_brand_subcategory');
          $this->db->where('REC_ID', $id);

          $query = $this->db->get();

          return $query;
        }

// --------------------------------- end subcategory --------------------------------
// --------------------------------- start subcategory --------------------------------
  function select_our_products(){
    $this->db->select('*');
    $this->db->from('p_new_products');
    // $this->db->where('is_active','1');

    $query = $this->db->get();

    return $query;
  }

  function add_products($name,$productID,$productBrand,$productCategory,$productSubcategory,$productSummary,$image){
    $query = "INSERT INTO p_new_products(NAME,PRODUCT_ID,BRAND_CATEGORY,BRAND_ID,BRAND_SUBCATEGORY,SUMMARY,IMAGES) values ('".$name."','".$productID."','".$productBrand."','".$productCategory."','".$productSubcategory."','".$productSummary."','".$image."')";
    $results = $this->db->query($query);
    if($results) return 1;
    else return 0;
  }
  function update_products($id,$name,$productID,$productBrand,$productCategory,$productSubcategory,$productSummary,$image){
            $data = array(
                    'NAME' => $name,
                    'PRODUCT_ID' => $productID,
                    'BRAND_CATEGORY' => $productBrand,
                    'BRAND_ID' => $productCategory,
                    'BRAND_SUBCATEGORY' => $productSubcategory,
                    'SUMMARY' => $productSummary,
                    'IMAGES' => $image

            );
            $this->db->where('PROD_ID', $id);
            $this->db->update('p_new_products', $data);
         }
  function update_produk($id,$name,$productID,$productBrand,$productCategory,$productSubcategory,$productSummary){
            $data = array(
                    'NAME' => $name,
                    'PRODUCT_ID' => $productID,
                    'BRAND_CATEGORY' => $productBrand,
                    'BRAND_ID' => $productCategory,
                    'BRAND_SUBCATEGORY' => $productSubcategory,
                    'SUMMARY' => $productSummary
            );
            $this->db->where('PROD_ID', $id);
            $this->db->update('p_new_products', $data);
         }

        function delete_products($id){
            $this->db->where('PROD_ID', $id);
            $this->db->delete('p_new_products');
        }

         function singleProducts($id) {

          $this->db->select('*');
          $this->db->from('p_new_products');
          $this->db->where('PROD_ID', $id);

          $query = $this->db->get();

          return $query;
        }
}
// --------------------------------- end subcategory --------------------------------