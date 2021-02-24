<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Accounts extends Admin_Controller {

	function __construct(){
        parent::__construct();
        $this->load->model('adminModel/Accounts_model','accounts_model');
    }

	public function index()
	{
		if ($this->checkLogin('A') == ''){
			$this->load->view('abojuto/templates/login',$this->data);
		}
		else{
			$admin_url = $this->data['admin_url'];
			redirect($admin_url.'/dashboard');
		}
	}

	public function admin_login_check(){
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		$admin_url = $this->data['admin_url'];
		$admin_query = $this->accounts_model->validate_admin_credentials($username,$password);

		if($admin_query->num_rows() == 1){

			$admindata = array(
				'fc_admin_session_id' => $admin_query->row()->id,
				'fc_admin_session_name' => $admin_query->row()->admin_name,
				'fc_admin_session_email' => $admin_query->row()->email,
				'session_admin_mode' => 'ADMIN',
			);

			$admin_id = $admin_query->row()->id;
			$this->session->set_userdata($admindata);
			
			$update_admin['last_login_date'] = date('Y-m-d H:i:s');
			$update_admin['last_login_ip'] = $this->input->ip_address();

			$this->accounts_model->update_admin_credentials($update_admin,$admin_id);

			if ($this->input->post('remember') != ''){
				$adminid = $this->encrypt->encode($admin_query->row()->id);
				$cookie = array(
				    'name'   => 'admin_session',
				    'value'  => $adminid,
				    'expire' => 86400,
				    'secure' => FALSE
				);
				
				$this->input->set_cookie($cookie); 
			}
			$this->session->set_userdata('redirect-success','Hi Admin, Your login was success');
			redirect($admin_url.'/dashboard/'.$property_id);
		}
		else{
			$this->session->set_userdata('redirect-error','Username or password is wrong');
			redirect($admin_url);
		}
	}

	public function logout(){
		$admin_url = $this->data['admin_url'];
		$update_admin['last_logout_date'] = date('Y-m-d H:i:s');
        $admin_id = $this->checkLogin('A');

		$this->accounts_model->update_admin_credentials($update_admin,$admin_id);
		$admindata = array(
						'fc_admin_session_id' => '',
						'fc_admin_session_name' => '',
						'fc_admin_session_email' => '',
						'session_admin_mode' => ''
					);
		$this->session->set_userdata($admindata);
		
		$cookie = array(
		    'name'   => 'admin_session',
		    'value'  => '',
		    'expire' => -86400,
		    'secure' => FALSE
		);
		$this->input->set_cookie($cookie);
		$this->session->set_userdata('redirect-success','Logged out succesfully');
		redirect($admin_url);
	}
}
