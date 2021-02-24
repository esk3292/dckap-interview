<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class Members_model extends MY_Model
	{
		public function __construct() 
		{
			parent::__construct();
		}

		public function get_all_members_list(){
			$this->db->select('id, firstname, lastname, email, profile_image, created, status');
			$this->db->order_by('id','desc');
			$result = $this->db->get(MEMBERS)->result();
			return $result;
		}

		public function check_user_count($email){
			$this->db->where('email',$email);
			$result = $this->db->get(MEMBERS)->num_rows();
			return $result;
		}

		public function insert_members($save){
			$this->db->insert(MEMBERS,$save);
		}

		public function get_full_members_details($member_id){
			$this->db->where('id',$member_id);
			$result = $this->db->get(MEMBERS)->row();
			return $result;
		}

		public function update_members($save,$member_id){
			$this->db->where('id',$member_id);
			$this->db->update(MEMBERS,$save);
		}

		public function delete_members($member_id){
			$this->db->where('id',$member_id);
			$this->db->delete(MEMBERS);
		}
	}
?>