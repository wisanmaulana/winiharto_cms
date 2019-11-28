<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

/*NEW ROUTES */
$route['default_controller'] = 'Home/index';
$route['home'] = 'Home/index';
$route['about_us'] = 'About/about_us';
$route['vision'] = 'About/vision';
$route['customers'] = 'About/customers';
$route['workshop'] = 'Workshop';
$route['contacts'] = 'Contacts';
$route['distribution'] = 'Distribution';

/* BRAND PRODUCTS */
$route['brand']     = 'Product/brand';
$route['product']   = 'Product/products';
$route['products']  = 'Product/search';

/* START CMS ROUTE */
$route['cms'] = 'CMS';
$route['cms/login_process'] = 'CMS/login_process';
$route['cms/login'] = 'CMS/index';
$route['dashboard'] = 'CMS/dashboard';
$route['cms/about'] = 'About_cms';
$route['cms/vision'] = 'Vision_cms';
$route['cms/customer'] = 'Customers_cms';
$route['cms/workshop'] = 'Workshop_cms';
$route['cms/brand'] = 'Brand_cms';
$route['cms/history'] = 'History_cms';
$route['cms/news'] = 'News_cms';
$route['cms/category'] = 'Category_cms';
$route['cms/subcategory'] = 'Subcategory_cms';
$route['cms/our_products'] = 'Our_Products_cms';


// $route['login'] = 'CMS/index';
// $route['signin'] = 'CMS/login';
// $route['cms_products'] = 'cms/product_cms';
// $route['dashboard'] = 'CMS/dashboard_cms';

//CMS Category
$route['edit_category'] = 'cms/category_cms';

//CMS Product
$route['edit_product'] = 'cms/product_cms';
$route['upload_product'] = 'cms/product_add';
/* ENDS CMS ROUTE */

/* WEBSITE PRODUCT */
//Our Products
$route['industrial/bench'] = 'Product/product_bench';
$route['industrial/platform'] = 'Product/product_platform';
$route['industrial/silo'] = 'Product/product_silo';
$route['industrial/weight'] = 'Product/product_weight';
$route['industrial/truck'] = 'Product/product_truck';

//Laborary Products
$route['laboratory/balance'] = 'Product/product_lab_balances';
$route['laboratory/mass'] = 'Product/product_mass_comparator';
$route['laboratory/moisture'] = 'Product/product_moisture_analyzer';

//Equipment Product
$route['equipment/one'] = 'Product/equipment_one';
$route['equipment/two'] = 'Product/equipment_two';
$route['equipment/three'] = 'Product/equipment_three';
/* END WEBSITE PRODUCT */

//Search Search Product
$route['product/search'] = 'Product/search';
$route['product/:any'] = 'Product/show_products/$1';
$route['vacancy/:any/:any'] = 'Vacancy';
$route['product/search/(:num)'] = 'Product/search';

$route['product/industrial/:any'] = 'Product/show_products_subcategory/$1';
$route['product/laboratory/:any'] = 'Product/show_products_subcategory/$1';
$route['product/equipment:any'] = 'Product/show_products_subcategory/$1';

/*END NEW ROUTES */
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;
