<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class Home_model extends MY_Model
	{
		public function get_all_category_list(){
			$this->db->select('id, name, date_added, status');
			$this->db->from(CATEGORY);
			$this->db->where('lang','en');
			$this->db->order_by('id','desc');
			$result = $this->db->get()->result();
			return $result;
		}
	}
?>