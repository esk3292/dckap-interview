<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class User_model extends MY_Model
	{
		public function user_detail($email){
			$this->db->select('id,email');
			$this->db->from(MEMBERS);
			$this->db->where('email',$email);
			$user=$this->db->get();
			return $user;
		}
		
		public function insert_data($data){
			$this->db->insert(MEMBERS,$data);
		}

	   	public function member_login_check($email, $password, $status=''){
	   		$this->db->where('email',$email);
	   		$this->db->where('password',$password);
	   		if($status != '')
				$this->db->where('status',$status);
	   		$result = $this->db->get(MEMBERS);
	   		return $result;
	   	}
	}
?>