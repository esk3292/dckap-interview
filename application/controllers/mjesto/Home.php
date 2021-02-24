<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Site_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('siteModel/Home_model','home_model');
    }

    public function index(){
        $this->data['heading'] = 'Home';
        $this->data['category'] = $this->home_model->get_all_category_list();
    	$this->load->view('mjesto/home/home_page',$this->data);
    }

    public function home_page(){
        $this->data['heading'] = 'Home';
        $this->data['category'] = $this->home_model->get_all_category_list();
    	$this->load->view('mjesto/home/home_page',$this->data);
    }
}
