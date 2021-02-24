<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class Search_model extends MY_Model
	{
		public function search_products($searchVal, $loginId=''){
			$this->db->select('P.*, M.firstname, M.lastname, C.name as categoryName');
			$this->db->from(PRODUCTS.' as P');
			$this->db->join(MEMBERS.' as M',' M.id= P.owner_id','left');
			$this->db->join(CATEGORY.' as C',' C.id= P.category_type','left');
			if($loginId){
				$this->db->where('M.id <>',$loginId);
				$this->db->where('P.status <>','Pending');
			}else{
				$this->db->where('P.status','Active');
			}
			if(!empty($searchVal)){
				$this->db->group_start();
				$this->db->like('C.name',$searchVal);
				$this->db->or_like('P.product_name',$searchVal);
				$this->db->or_like('P.product_description',$searchVal);
				$this->db->group_end();
			}
			
			$result = $this->db->get()->result();
			//echo'<pre>';print_r($this->db->last_query());exit;
			return $result;
		}
	}
?>