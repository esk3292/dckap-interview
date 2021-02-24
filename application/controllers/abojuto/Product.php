<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Admin_Controller {
	function __construct(){
        parent::__construct();
        $this->load->model('adminModel/Product_model','product_model');
    }

    public function display_product_list(){
    	if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
	    	$this->data['heading'] = 'Product List';
			$this->data['product_list'] = $this->product_model->get_all_product_list();
			$this->load->view('abojuto/product/display_product_list',$this->data);
		}
    }

    public function add_product(){
    	if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
	    	$product_id = $this->uri->segment(3);

	    	if($product_id == ''){
	    		$this->data['heading'] = 'Add Product';
	    		$this->data['product_id'] = '';
	    	}
	    	else{
	    		$this->data['heading'] = 'Edit Product';
	    		$this->data['product_id'] = $product_id;
	    		$this->data['product_data'] = $this->product_model->get_product_details($product_id);
	    	}
	    	$this->data['members_data'] = $this->product_model->get_all_active_member_details();
	    	$this->data['category_types'] = $this->product_model->get_all_active_category();
			$this->load->view('abojuto/product/add_product',$this->data);
		}
    }

    public function insert_update_product(){
    	if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
	    	$admin_url = $this->data['admin_url'];
	    	$product_id = $this->input->post('product_id');
	    	unset($_POST['product_id']);
	    	$save = $this->input->post();

	    	$config['overwrite'] = FALSE;
	    	$config['allowed_types'] = 'jpg|jpeg|gif|png';
		    $config['max_size'] = 2000;
		    $config['upload_path'] = './assets/site-assets/product/product-banner-images';
		    $this->load->library('upload', $config);

		    if ( $this->upload->do_upload('banner_photos')){
		    	$logoDetails = $this->upload->data();
		    	$save['banner_photos'] = $logoDetails['file_name'];

		    	if($product_id !=''){
		    		$product_banner_photos = $this->product_model->get_product_banner_details($product_id);
		    		$image_result = 'assets/site-assets/product/product-banner-images/'.$product_banner_photos;
					if(is_file($image_result))
						unlink($image_result);
		    	}
			}

			$seo_url = $this->input->post('product_name');
			$seo_url = strtolower($seo_url);
			$seo_url = trim($seo_url);
			$seo_url = str_replace("'","",$seo_url);
			$seo_url = str_replace("&","",$seo_url);
			$seo_url = str_replace("'","",$seo_url);
			$seo_url = preg_replace("[^A-Za-z0-9]", " ", $seo_url);
			$seo_url = preg_replace( "/\s+/", " ", $seo_url);
			$seo_url = str_replace(" ","-", $seo_url);
			$save['seo_url'] = $seo_url.'-'.time();

			if($product_id == ''){
				$product_id = $this->product_model->insert_update_product($save);
				$this->session->set_userdata('redirect-success','Product information inserted successfully');
				redirect($admin_url.'/product-image/'.$product_id);
			}
			else{
				$product_id = $this->product_model->insert_update_product($save,$product_id);
				$this->session->set_userdata('redirect-success','Product information updated successfully');
				redirect($admin_url.'/product-image/'.$product_id);
			}
		}
    }

    public function product_image(){
    	if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
	    	$this->data['heading'] = 'Product Image';
	    	$product_id = $this->data['product_id'] = $this->uri->Segment(3);
	    	$this->data['product_image'] = $this->product_model->get_all_product_image($product_id);
	    	$this->load->view('abojuto/product/product_image',$this->data);
	    }
    }

    public function update_product_image(){
    	if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
	    	$admin_url = $this->data['admin_url'];
	    	$product_id = $this->input->post('product_id');

			$uploaddir = "assets/site-assets/product/product/";
			$uploaddirResize = "assets/site-assets/product/product-resize/";
			$uploaddirOriginal = "assets/site-assets/product/product-original/";
			$uploaddirMap = "assets/site-assets/product/product-map/";
			$uploaddirIos = "assets/site-assets/product/product-ios/";
			$max = 0;
			foreach ($_FILES['product_photos']['name'] as $name => $value)
			{
				$file_size = $_FILES['product_photos']['size'][$name];
				if (($file_size < 2097152 && $file_size !=0 )){
					$filename = stripslashes($_FILES['product_photos']['name'][$name]);
					$ext = $this->getExtension($filename);
					$ext = strtolower($ext);
					$renameArr = explode('.', $filename);
					$imgTitle = strtolower($renameArr[0]);
					$imgTitle = trim($imgTitle);
					$imgTitle = str_replace("'","",$imgTitle);
					$imgTitle = str_replace("&","",$imgTitle);
					$imgTitle = str_replace("'","",$imgTitle);
					$imgTitle = preg_replace("[^A-Za-z0-9]", " ", $imgTitle);
					$imgTitle = preg_replace( "/\s+/", " ", $imgTitle);
					$imgTitle = str_replace(" ","-", $imgTitle);
					$filename = $imgTitle.'-'.time().'.'.$ext;
					$size=filesize($_FILES['product_photos']['tmp_name'][$name]);
					$width_height = getimagesize($_FILES['product_photos']['tmp_name'][$name]);
					$image_name=time().'-'.$filename;
					$newname=$uploaddir.$image_name;
					if (move_uploaded_file($_FILES['product_photos']['tmp_name'][$name], $newname)) 
					{
						@copy($uploaddir.$image_name, $uploaddirOriginal.$image_name);
						@copy($uploaddir.$image_name, $uploaddirResize.$image_name);
						@copy($uploaddir.$image_name, $uploaddirMap.$image_name);
						@copy($uploaddir.$image_name, $uploaddirIos.$image_name);
						$this->ImageResizeWithCrop(640, 400, $image_name, $uploaddirIos);
						$this->watermarkimages($uploaddirIos, $image_name);

						$this->ImageResizeWithCrop(200, 200, $image_name, $uploaddirMap);
						$this->watermarkimages($uploaddirMap, $image_name);

						$this->ImageResizeWithCrop(350, 350, $image_name, $uploaddirResize);
						$this->watermarkimages($uploaddirResize, $image_name);
						
						$this->ImageResizeWithCrop(1350, 460, $image_name, $uploaddir);
						$this->watermarkimages($uploaddir, $image_name);
						
						$save['product_id'] = $product_id;
						$save['name'] = $image_name;
						$this->product_model->insert_product_image($save);
					}
				}else{
					$max = 1;
				}
			}

			if($max == 1){
				$this->session->set_userdata('redirect-error','product images updated successfully');
				redirect($admin_url.'/product-image/'.$product_id);
			}else{
				$this->session->set_userdata('redirect-success','product images updated successfully');
				redirect($admin_url.'/product-image/'.$product_id);
			}
		}
    }

    public function getExtension($str){
		$i = strrpos($str,".");
		if (!$i) { return ""; }
		$l = strlen($str) - $i;
		$ext = substr($str,$i+1,$l);
		return $ext;
	}

	public function update_product_status(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$product_id = $this->uri->segment(3);
			$save['status'] = $status = ($this->uri->segment(4) == 'Active')?'Inactive':'Active';

			if($status == 'Active'){
				$status_count = $this->product_model->status_pre_check_product($product_id);
				if($status_count != 1){
					$this->session->set_userdata('redirect-error','Before update the status fill the fields (category Type, product Name, product Price, Banner Image) which is not given in product listing');
					redirect($admin_url.'/product-list');
				}
			}

			$this->product_model->insert_update_product($save,$product_id);
			$this->session->set_userdata('redirect-success','product status updated successfully');
			redirect($admin_url.'/product-list');
		}
	}

	public function delete_product(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$product_id = $this->uri->segment(3);

			$this->product_model->delete_product($product_id);
			$this->session->set_userdata('redirect-success','product deleted successfully');
			redirect($admin_url.'/product-list');
		}
	}

	public function view_product(){
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$this->data['heading'] = 'View Product';
			$product_id = $this->uri->segment(3);
			$this->data['product_data'] = $this->product_model->get_product_details($product_id);
			$this->data['product_image'] = $this->product_model->get_all_product_image($product_id);
			$this->load->view('abojuto/product/view_product',$this->data);
		}
	}

	public function common_product_validation(){
		$admin_url = $this->data['admin_url'];
		if ($this->checkLogin('A') == ''){
			redirect($this->data['admin_url']);
		}
		else{
			$status = $this->input->post('status');
			$checkbox_id = $this->input->post('checkbox_id');

			$this->product_model->commonActiveInactive(PRODUCTS,$status,$checkbox_id,'id');

			if($status == 'Delete')
				$this->session->set_userdata('redirect-success','product records deleted successfully');
			else
				$this->session->set_userdata('redirect-success','product status updated successfully');
			redirect($admin_url.'/product-list');
		}
	}

	public function delete_prop_image(){
		if ($this->checkLogin('A') == ''){
				redirect($this->data['admin_url']);
		}
		else{
			$admin_url = $this->data['admin_url'];
			$image_id = $this->uri->segment(3);
			$product_id = $this->uri->segment(4);
			$this->product_model->delete_prop_image($image_id);
			$this->session->set_userdata('redirect-success','product image deleted successfully');
			redirect($admin_url.'/product-image/'.$product_id);
		}
	}
}
