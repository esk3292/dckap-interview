<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class Category_model extends MY_Model
	{
		public function __construct() 
		{
			parent::__construct();
		}

		public function get_all_category_list(){
			$this->db->select('id, name, date_added, status');
			$this->db->from(CATEGORY);
			$this->db->where('lang','en');
			$this->db->order_by('id','desc');
			$result = $this->db->get()->result();
			return $result;
		}

		public function get_category_data($category_id){
			$this->db->select('id, name');
			$this->db->from(CATEGORY);
			$this->db->where('id',$category_id);
			$result = $this->db->get()->row();
			return $result;
		}

		public function check_category_available_insert($name){
			$this->db->where('name',$name);
			$result = $this->db->get(CATEGORY)->num_rows();
			return $result;
		}

		public function check_category_available_update($name,$category_id){
			$this->db->where('name',$name);
			$this->db->where('id <>',$category_id);
			$result = $this->db->get(CATEGORY)->num_rows();
			return $result;
		}

		public function insert_category($save){
			$this->db->insert(CATEGORY,$save);

			$update['to_id'] = $last_id = $this->db->insert_id();
			$this->db->where('id',$last_id);
			$this->db->update(CATEGORY,$update);
		}

		public function update_category($save,$listspace_id){
			$this->db->where('id',$listspace_id);
			$this->db->update(CATEGORY,$save);
		}
	}
?>