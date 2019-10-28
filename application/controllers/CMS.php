<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class CMS extends CI_Controller {

    public function index(){
      $this->load->library('session');
      $this->load->helper('url');

      if ($this->session->userdata('ID') == null) {
        $this->login();
      } else{
        $this->dashboard();
      }

      // $this->load->view('templates/header', $data);
		  // $this->load->view('templates/frame_side', $data);
      // $this->load->view('pages-cms/login');
      // $this->load->view('templates/footer', $data);
    }

    public function login() {

      // $sess_array = array(
      //       'user_id' => '1',
      //       'user_name' => 'admin',
      //       'user_email' => 'admin',
      //       'user_group' => 'ADMIN',
      //       'user_corporate_id' => '1'
      // );

      // $this->session->set_userdata($sess_array);

      $this->load->helper('form');
    
      $data['page'] = "LOGIN";

      $this->load->view('templates-cms/header', $data);
      $this->load->view('templates-cms/footer');
      $this->load->view('pages-cms/login');

      // $data['title'] = "Winiharto - CMS"; // Capitalize the first letter
      // $page = 'login';

      // $this->dashboard_cms();
    }

    public function logout()
    {
      $this->load->helper('form');
      $this->load->library('session');
      $this->session->sess_destroy();
      redirect('cms/login');
    }

    public function login_process()
    {
      // $this->output->enable_profiler(TRUE);
      // $this->load->library('session');
      $this->load->model('Model_cms', 'cms');

      $ID = $this->input->post('txt-username');
      $PASS = $this->input->post('txt-password');

       $hashPassword = md5($PASS);
      
      $checkUsername = $this->cms->checkUsername($ID);

      //check if username exist
      if ($checkUsername->num_rows() > 0) {
        //check if password match
        $query = $this->cms->cms_login($ID, $hashPassword);
        if($query->num_rows() > 0){
          foreach ($query->result() as $data) {
            $session = array(
              'ID' => $data->ID,
              'user_group' => $data->GROUP_ID
            );
          }
           $this->session->set_userdata($session);
           redirect('cms/dashboard');
        } 
        else{
          redirect(site_url('cms/login?error=1'));
        }
      } 
      else{
        redirect(site_url('cms/login?error=2'));
      }
    }

    public function dashboard()
    {

      // $this->output->enable_profiler(TRUE);
      $this->load->library('session');
      $this->load->helper('form');

      $data['page'] = "Dashboard";

      
      $this->load->view('templates-cms/header', $data);
      $this->load->view('templates-cms/navbar');
      $this->load->view('pages-cms/dashboard');
      $this->load->view('templates-cms/footer');    
    }

    
}
