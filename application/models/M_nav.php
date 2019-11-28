<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_nav extends CI_Model {
    
    public function getNavigationParent() {
        $this->db->select('*');
        $this->db->from('g_navigation');
        $this->db->where('PARENT', '0');
        $query = $this->db->get();
        return $query;
    }

    public function getNavigationChild($id) {
        $this->db->select('*');
        $this->db->from('g_navigation');
        $this->db->where('PARENT', $id);
        $query = $this->db->get();
        return $query;
    }

    public function getBrandParent($brand) {
        $this->db->select('*');
        $this->db->from('g_brand_category');
        $this->db->where('BRAND_ID', $brand);
        $this->db->where('PARENT_ID', '0');
        $query = $this->db->get();
        return $query;
    }

    public function getBrandChild($parent) {
        $this->db->select('*');
        $this->db->from('g_brand_category');
        $this->db->where('PARENT_ID', $parent);
        $query = $this->db->get();
        return $query;
    }
    
    public function getCategoryParent($category) {
        $this->db->select('*');
        $this->db->from('g_product_category');
        $this->db->where('DESCRIPTION', $category);
        $query = $this->db->get();
        return $query;
    }
} 