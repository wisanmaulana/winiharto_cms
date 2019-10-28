<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class model_brand extends CI_Model {

  //Get current Product Range Text
  function sartorius_brand() {
    $query = $this->db->query("SELECT DISTINCT p_category.`ID`, p_category.`NAME`
                               FROM p_category
                               LEFT JOIN w_product ON p_category.`ID` =  w_product.`CATEGORY_ID`");
    return $query->result();
  }

}
