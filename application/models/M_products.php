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
	}