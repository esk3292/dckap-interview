<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Members extends Admin_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('adminModel/Members_model','members_model');
    }

	public function display_members_list(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$this->data['heading'] = 'Member List';
			$this->data['members_list'] = $this->members_model->get_all_members_list();
			$this->load->view('abojuto/members/display_members_list',$this->data);
		}
	}

	public function add_members(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$this->data['heading'] = 'Add Members';
			$this->load->view('abojuto/members/add_members',$this->data);
		}
	}

	public function insert_members(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];

			$save = $this->input->post();
			$save['password'] = md5($this->input->post('password'));
			$save['user_type'] = 'Guest';
			
			$email = $this->input->post('email');
			$members_count = $this->members_model->check_user_count($email);
			if($members_count > 0){
				$this->session->set_userdata('redirect-error','Email Already Registered');
				redirect($admin_url.'/add-members');
			}

			$config['overwrite'] = FALSE;
	    	$config['allowed_types'] = 'jpg|jpeg|gif|png';
		    $config['max_size'] = 2000;
		    $config['upload_path'] = './assets/site-assets/members-images';
		    $this->load->library('upload', $config);

		    if ( $this->upload->do_upload('profile_image')){
		    	$logoDetails = $this->upload->data();
		    	$save['profile_image'] = $logoDetails['file_name'];
			}

			$this->members_model->insert_members($save);
			$this->session->set_userdata('redirect-success','Member registered successfully');
			redirect($admin_url.'/members-list');
		}
	}

	public function edit_members(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$this->data['heading'] = 'Edit members';
			$member_id = $this->uri->segment(3);
			$this->data['members_data'] = $this->members_model->get_full_members_details($member_id);
			$this->load->view('abojuto/members/edit_members',$this->data);
		}
	} 

	public function update_members(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];

			$save = $this->input->post();
			$member_id = $this->input->post('member_id');
			unset($save['member_id']);

			$config['overwrite'] = FALSE;
	    	$config['allowed_types'] = 'jpg|jpeg|gif|png';
		    $config['max_size'] = 2000;
		    $config['upload_path'] = './assets/site-assets/members-images';
		    $this->load->library('upload', $config);

		    if ( $this->upload->do_upload('profile_image')){
		    	$logoDetails = $this->upload->data();
		    	$save['profile_image'] = $logoDetails['file_name'];
			}

			$this->members_model->update_members($save,$member_id);
			$this->session->set_userdata('redirect-success','Member updated successfully');
			redirect($admin_url.'/members-list');
		}
	}

	public function view_members(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$this->data['heading'] = 'View members';
			$member_id = $this->uri->segment(3);
			$this->data['members_data'] = $this->members_model->get_full_members_details($member_id);
			$this->load->view('abojuto/members/view_members',$this->data);
		}
	}

	public function delete_members(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$member_id = $this->uri->segment(3);
			$this->members_model->delete_members($member_id);
			$this->session->set_userdata('redirect-success','Member deleted successfully');
			redirect($admin_url.'/members-list');
		}
	}

	public function update_member_status(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$member_id = $this->uri->segment(3);
			$save['status'] = ($this->uri->segment(4) == 'Active')?'Inactive':'Active';
			$this->members_model->update_members($save,$member_id);
			$this->session->set_userdata('redirect-success','Member status updated successfully');
			redirect($admin_url.'/members-list');
		}
	}

	public function common_member_validation(){
		$admin_url = $this->data['admin_url'];
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$status = $this->input->post('status');
			$checkbox_id = $this->input->post('checkbox_id');

			$this->members_model->commonActiveInactive(MEMBERS,$status,$checkbox_id,'id');

			if($status == 'Delete')
				$this->session->set_userdata('redirect-success','Members records deleted successfully');
			else
				$this->session->set_userdata('redirect-success','Members status updated successfully');
			redirect($admin_url.'/members-list');
		}
	}
}
