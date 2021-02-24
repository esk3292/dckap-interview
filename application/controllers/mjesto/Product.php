<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Product extends Site_Controller {
    	function __construct(){
            parent::__construct();
			$this->load->model('siteModel/Rental_model','Rental_model');
			$this->load->model('adminModel/Product_model','product_model');
        }

        public function product_detail(){
			$seo = $this->uri->segment(2);
			$this->data['product_detail'] = $prd =  $this->Rental_model->detail_page($seo);

			if($prd->num_rows() == 0){
				$this->session->set_userdata('redirect-error','Product your are trying to view is Inactive or not available');
				redirect();
			}
			$this->data['heading'] = $prd->row()->product_name;
			$prd_id = $prd->row()->id;
			$this->data['product_img'] = $this->Rental_model->all_image($prd_id);
        	$this->load->view('mjesto/product/product_detail',$this->data);
        }

        public function add_product(){
        	if($this->checkLogin('U')==''){
				redirect();
			}
			else{
				$this->data['heading'] = 'Add Product';
				$this->data['category_types'] = $this->product_model->get_all_active_category();
				$this->load->view('mjesto/product/add_product',$this->data);
			}
        }

        public function save_member_product(){
        	if($this->checkLogin('U')==''){
				redirect();
			}
			else{
				$save = $this->input->post();
				$save['owner_id'] = $this->data['login_id'];

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

				$product_id = $this->product_model->insert_update_product($save);


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
							
							$imageSave['product_id'] = $product_id;
							$imageSave['name'] = $image_name;
							$this->product_model->insert_product_image($imageSave);
						}
					}else{
						$max = 1;
					}
				}


				redirect('search-result');
			}
        }

        public function getExtension($str){
			$i = strrpos($str,".");
			if (!$i) { return ""; }
			$l = strlen($str) - $i;
			$ext = substr($str,$i+1,$l);
			return $ext;
		}
    }
?>