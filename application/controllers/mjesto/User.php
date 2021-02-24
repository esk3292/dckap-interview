<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Site_Controller {
	
	function __construct(){
            parent::__construct();
			$this->load->model('siteModel/User_model','User_model');
	}
	
	public function dashboard(){
		if($this->checkLogin('U')==''){
			redirect();
		}
		else{
			$this->data['heading'] = 'Member Dasboard';
			$user_id = $this->data['login_id'];
			redirect('search-result');
		}
	}

}
