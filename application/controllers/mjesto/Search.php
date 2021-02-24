<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Search extends Site_Controller {
    	function __construct(){
            parent::__construct();
            $this->load->model('siteModel/Search_model','search_model');
            $this->load->model('siteModel/Home_model','home_model');
        }

        public function search_page(){
        	$searchVal = $this->input->get('product');
            $this->data['heading'] = 'Search - '.$searchVal;
    		$this->data['search_result'] = $this->search_model->search_products($searchVal, $this->data['login_id']);
    		$this->data['search_product'] = $searchVal;
            $this->data['category'] = $this->home_model->get_all_category_list();
    		$this->load->view('mjesto/search/search_page',$this->data);
        }
    }
?>