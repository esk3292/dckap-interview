<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class Accounts_model extends MY_Model
	{
		public function validate_admin_credentials($username,$password){
			$this->db->where('admin_name',$username);
			$this->db->where('admin_password',$password);
			$result = $this->db->get(ADMIN);
			return $result;
		}

		public function update_admin_credentials($update_admin,$admin_id){
			$this->db->where('id',$admin_id);
			$this->db->update(ADMIN,$update_admin);
		}

		public function total_table_count($table,$status=''){
			if($status !=''){
				$this->db->where('status',$status);
			}
			$result = $this->db->get($table)->num_rows();
			return $result;
		}
	}
?>