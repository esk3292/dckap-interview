<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class Rental_model extends MY_Model
	{
		
		
		public function detail_page($seo){

			$this->db->select('P.*, M.firstname, M.lastname, C.name as categoryName');
			$this->db->from(PRODUCTS.' as P');
			$this->db->join(MEMBERS.' as M',' M.id= P.owner_id','left');
			$this->db->join(CATEGORY.' as C',' C.id= P.category_type','left');
			$this->db->where('P.seo_url',$seo);
			$this->db->where('P.status','Active');
			$result = $this->db->get();
			return $result;
		}
		
		public function all_image($prd_id){
			$this->db->select('name');
			$this->db->from(PRODUCTS_IMAGE);
			$this->db->where('product_id',$prd_id);
			$img = $this->db->get();
			return $img;
		}
	}
?>