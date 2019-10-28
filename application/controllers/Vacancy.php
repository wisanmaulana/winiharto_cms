<?php if(!defined("BASEPATH")) exit("Hack Attempt");
class Vacancy extends CI_Controller {

    public function index(){
      $data['idvacancy']=$this->uri->segment(2);

    // $url = 'http://113.20.29.27:8088/LANCAR/api/action/readstock.php?comp_id=';
    // $curl = curl_init();
    // curl_setopt($curl, CURLOPT_URL, $url);
    // curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    // curl_setopt($curl, CURLOPT_HEADER, false);
    // $data = curl_exec($curl);
    // curl_close($curl);
      
      //$url = file_get_contents("http://113.20.29.27/SQS/api/action/readVacancy.php?id=1&random_no=3830");

    $url = 'http://113.20.29.27:8088/SQS/api/action/readVacancy.php?id=1&random_no=3830';

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $url);

    curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);

    $content = curl_exec ($ch);

    curl_close($ch);
    //return $data1;
    $data['datavacancy']=$content."test";
      $page="vacancy";
      $this->load->view('templates/header',$data);
      $this->load->view('pages/'.$page);
      $this->load->view('templates/footer');
    }
}
