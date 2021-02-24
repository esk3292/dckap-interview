<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Admin_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('adminModel/Accounts_model','accounts_model');
    }

	public function dashboard()
	{
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$this->data['heading'] = 'Dashboard';
			$this->data['total_members_count'] = $this->accounts_model->total_table_count(MEMBERS);
			$this->data['total_products_count'] = $this->accounts_model->total_table_count(PRODUCTS);
			$this->load->view('abojuto/dashboard/dashboard',$this->data);
		}
	}
}
