<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class Product_model extends MY_Model
	{
		public function __construct() 
		{
			parent::__construct();
		}

		public function get_all_product_list(){
			$this->db->select('P.id, P.product_name, P.seo_url, P.owner_id, P.price, P.status, P.date_added, M.firstname, M.lastname');
			$this->db->from(PRODUCTS.' as P');
			$this->db->join(MEMBERS.' as M',' M.id = P.owner_id');
			$this->db->order_by('P.id','desc');
			$result = $this->db->get()->result();
			return $result;
		}

		public function get_all_active_member_details(){
			$this->db->select('id, firstname, lastname');
			$this->db->where('status','Active');
			$this->db->where('deleted_status','No');
			$this->db->order_by('firstname','asc');
			$result = $this->db->get(MEMBERS)->result();
			return $result;
		}

		public function get_all_active_category(){
			$this->db->select('to_id, name');
			$this->db->where('status','Active');
			$this->db->where('lang','en');
			$result = $this->db->get(CATEGORY)->result();
			return $result;
		}

		public function get_product_details($product_id){
			$this->db->select('P.*, M.firstname, M.lastname, C.name as categoryName');
			$this->db->from(PRODUCTS.' as P');
			$this->db->join(MEMBERS.' as M',' M.id= P.owner_id','left');
			$this->db->join(CATEGORY.' as C',' C.id= P.category_type','left');
			$this->db->where('P.id',$product_id);
			$result = $this->db->get()->row();
			return $result;
		}

		public function insert_update_product($save,$product_id=''){
			if($product_id == ''){
				$this->db->insert(PRODUCTS,$save);
				$product_id = $this->db->insert_id();
			}
			else{
				$this->db->where('id',$product_id);
				$this->db->update(PRODUCTS,$save);
			}
			return $product_id;
		}

		public function get_all_product_image($product_id){
			$this->db->where('product_id',$product_id);
			$result = $this->db->get(PRODUCTS_IMAGE)->result();
			return $result;
		}

		public function insert_product_image($save){
			$this->db->insert(PRODUCTS_IMAGE,$save);
		}

		public function status_pre_check_product($product_id){
			$this->db->where('id',$product_id);
			$this->db->where('owner_id <>','');
			$this->db->where('category_type <>','0');
			$this->db->where('product_name <>','');
			$this->db->where('price <>','0.00');
			$this->db->where('banner_photos <>','dummyImage.jpg');
			$result = $this->db->get(PRODUCTS)->num_rows();
			return $result;
		}

		public function delete_product($product_id){

			$this->db->select('banner_photos');
			$this->db->where('id',$product_id);
			$product_result = $this->db->get(PRODUCTS)->row();
			$image_result = 'assets/site-assets/product/product-banner-images/'.$product_result->banner_photos;
			if(is_file($image_result))
				unlink($image_result);

			$this->db->where('id',$product_id);
			$this->db->delete(PRODUCTS);

			$this->db->select('name');
			$this->db->where('product_id',$product_id);
			$result = $this->db->get(PRODUCTS_IMAGE)->result();

			foreach ($result as $key => $value) {
				$image_result = 'assets/site-assets/product/product/'.$value->name;
				$image_result_ios = 'assets/site-assets/product/product-ios/'.$value->name;
				$image_result_map = 'assets/site-assets/product/product-map/'.$value->name;
				$image_result_original = 'assets/site-assets/product/product-original/'.$value->name;
				$image_result_resize = 'assets/site-assets/product/product-resize/'.$value->name;
				if(is_file($image_result))
					unlink($image_result);
				if(is_file($image_result_ios))
					unlink($image_result_ios);
				if(is_file($image_result_map))
					unlink($image_result_map);
				if(is_file($image_result_original))
					unlink($image_result_original);
				if(is_file($image_result_resize))
					unlink($image_result_resize);
			}
			$this->db->where('product_id',$product_id);
			$this->db->delete(PRODUCTS_IMAGE);
		}

		public function get_product_banner_details($product_id){
			$this->db->select('banner_photos');
			$result = $this->db->get(PRODUCTS)->row();
			return $result->banner_photos;
		}

		public function delete_prop_image($image_id){
			$this->db->select('name');
			$this->db->where('id',$image_id);
			$result = $this->db->get(PRODUCTS_IMAGE)->result();

			foreach ($result as $key => $value) {
				$image_result = 'assets/site-assets/product/product/'.$value->name;
				$image_result_ios = 'assets/site-assets/product/product-ios/'.$value->name;
				$image_result_map = 'assets/site-assets/product/product-map/'.$value->name;
				$image_result_original = 'assets/site-assets/product/product-original/'.$value->name;
				$image_result_resize = 'assets/site-assets/product/product-resize/'.$value->name;
				if(is_file($image_result))
					unlink($image_result);
				if(is_file($image_result_ios))
					unlink($image_result_ios);
				if(is_file($image_result_map))
					unlink($image_result_map);
				if(is_file($image_result_original))
					unlink($image_result_original);
				if(is_file($image_result_resize))
					unlink($image_result_resize);
			}
			$this->db->where('id',$image_id);
			$this->db->delete(PRODUCTS_IMAGE);
		}
	}
?>