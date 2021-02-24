<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends Admin_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('adminModel/Category_model','category_model');
    }

	public function display_category_list(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$this->data['heading'] = 'Category List';
			$this->data['category_list'] = $this->category_model->get_all_category_list();
			$this->load->view('abojuto/category/display_category_list',$this->data);
		}
	}

	public function add_category(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$category_id = $this->uri->segment(3);
			if($category_id == '')
				$this->data['heading'] = 'Add Category';
			else
				$this->data['heading'] = 'Edit Category';

			$this->data['category_data'] = $this->category_model->get_category_data($category_id);
			$this->load->view('abojuto/category/add_category',$this->data);
		}
	}

	public function insert_update_category(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$category_id = $this->input->post('category_id');
			$save['name'] = $this->input->post('name');

			if($category_id == ''){
				$name_count = $this->category_model->check_category_available_insert($save['name']);
				if($name_count > 0){
					$this->session->set_userdata('redirect-error','Category name already added, try with someother name');
					redirect($admin_url.'/add-category');
				}

				$save['seo_url'] = url_title($save['name'],'dash',TRUE);
				$this->category_model->insert_category($save);
				$this->session->set_userdata('redirect-success','category added successfully');
			}
			else{
				$name_count = $this->category_model->check_category_available_update($save['name'],$category_id);
				if($name_count > 0){
					$this->session->set_userdata('redirect-error','Category name already added, try with someother name');
					redirect($admin_url.'/edit-category/'.$category_id);
				}

				$this->category_model->update_category($save,$category_id);
				$this->session->set_userdata('redirect-success','Category updated successfully');
			}

			redirect($admin_url.'/category-list');
		}
	}

	public function view_category(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$category_id = $this->uri->segment(3);
			$this->data['heading'] = 'View Category';
			$this->data['category_data'] = $this->category_model->get_category_data($category_id);
			$this->load->view('abojuto/category/view_category',$this->data);
		}
	}

	public function update_category_status(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$category_id = $this->uri->segment(3);
			$save['status'] = ($this->uri->segment(4) == 'Active')?'Inactive':'Active';
			$this->category_model->update_category($save,$category_id);
			$this->session->set_userdata('redirect-success','Category status updated successfully');
			redirect($admin_url.'/category-list');
		}
	}

	public function common_category_validation(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$status = $this->input->post('status');
			$checkbox_id = $this->input->post('checkbox_id');

			$this->category_model->commonActiveInactive(CATEGORY,$status,$checkbox_id,'to_id');

			if($status == 'Delete')
				$this->session->set_userdata('redirect-success','Category records deleted successfully');
			else
				$this->session->set_userdata('redirect-success','Category status updated successfully');
			redirect($admin_url.'/category-list');
		}
	}
}
