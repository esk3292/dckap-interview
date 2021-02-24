<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class MY_Model extends CI_Model {
		public function __construct()  
		{
			parent::__construct();
		}

		public function commonActiveInactive($table,$status,$checkbox_id,$column){
			
			if($status == 'Delete'){
				if($table == 'fc_cms')
					$this->db->where('to_id >=',5);
				$this->db->where_in($column,$checkbox_id);
				$this->db->delete($table);
			}
			else{
				$save['status'] = $status;
				if($table == 'fc_cms')
					$this->db->where('to_id >=',5);
				$this->db->where_in($column,$checkbox_id);
				$this->db->update($table,$save);
			}
		}

		public function get_specific_field($table,$field,$condition=''){
			$this->db->select($field);
			if($condition != '')
				$this->db->where($condition);
			$result = $this->db->get($table);
			return $result;
		}
	}
?>