    <?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class M_products extends CI_Model {

    function selectProducts($search_index) {

      $this->db->select('*');
      $this->db->from('p_new_products');
      $this->db->where('PRODUCT_ID', $search_index);
      $this->db->or_where('BRAND_ID', $search_index);
      $this->db->or_where('BRAND_SUBCATEGORY', $search_index);

      $query = $this->db->get();

      return $query;
    }

    function selectBrandName($search_index) {

      $this->db->select('*');
      $this->db->from('g_brand_category');
      $this->db->where('CATEGORY_ID', $search_index);

      $query = $this->db->get();

      return $query;
    }

    function selectProductName($search_index) {

      $this->db->select('*');
      $this->db->from('g_product_category');
      $this->db->where('ID', $search_index);

      $query = $this->db->get();

      return $query;
    }

    function searchProducts($index) {

      $this->db->select('*');
      $this->db->from('p_new_products');
      $this->db->like('NAME', $index);
      $this->db->or_like('BRAND_CATEGORY', $index);
      $this->db->limit(10);

      $query = $this->db->get();

      return $query;
    }

    // /* Our Category Section */
    // function select_our_products($search_index) {
    //   $query = $this->db->query("SELECT NAME, SUMMARY, BRAND_CATEGORY, IMAGES
    //                              FROM p_new_products
    //                              WHERE PRODUCT_ID = '$search_index'");
    //   return $query->result();
    // }

    // function selectBrandProduct($search_index) {

    //   $this->db->select('*');
    //   $this->db->from('p_new_products');
    //   $this->db->where('BRAND_SUBCATEGORY', $search_index);
    //   $this->db->or_where('BRAND_ID', $search_index);

    //   $query = $this->db->get();

    //   return $query;
    // }

    // function selectProductName($searchIndex) {

    //   $this->db->select('*');
    //   $this->db->from('g_brand_category');
    //   $this->db->where('CATEGORY_ID');

    //   $query = $this->db->get();

    //   return $query;

    // }

    // /*Our Category Section Ends Here */

    // function select_category($search_index) {
    //   $query = $this->db->query("SELECT NAME, SUMMARY, BRAND_CATEGORY, IMAGES
    //                              FROM p_new_products
    //                              WHERE BRAND_ID LIKE '%$search_index%'");
    //   return $query->result();
    // }

    // function search_all_products($search_index) {

    //   $query = $this->db->query("SELECT NAME, SUMMARY, BRAND_CATEGORY, IMAGES FROM p_new_products
    //                              WHERE NAME OR BRAND_CATEGORY OR SUMMARY LIKE '%$search_index%'");

    //   return $query;
    // }

    // function search_product($search_index) {

    //   $offset= $this->uri->segment(3);

    //   if(empty($offset)) {
		// 		$offset = 0;
		// 	}

    //   $query = $this->db->query("SELECT NAME, SUMMARY, BRAND_CATEGORY, IMAGES FROM p_new_products
    //                              WHERE NAME OR BRAND_CATEGORY OR SUMMARY LIKE '%$search_index%'
    //                              LIMIT 5 OFFSET $offset");

    //   return $query;
    // }

    // function search_product_title($search_index) {

    //   $query = $this->db->query("SELECT ID, NAME
    //                              FROM w_brand_category
    //                              WHERE ID = '$search_index'");

    //   return $query->result();
    // }

    // function search_product_title_subcategory($search_index) {

    //   $query = $this->db->query("SELECT ID, NAME
    //                              FROM w_brand_subcategory
    //                              WHERE ID = '$search_index'");

    //   return $query->result();
    // }


		// //Bench Scales
		// function select_product_by_subcategory($search_index){

		// 	$query = $this->db->query("SELECT name, brand_id, summary, image FROM w_product
    //                                    WHERE subcategory_id = '$search_index'");
		// 	return $query->result();
		// }
	}
