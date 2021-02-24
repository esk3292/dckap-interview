<?php
	if (!defined('BASEPATH')) exit('No direct script access allowed');

	function get_member_details($login_id, $field_name){
		$ci = &get_instance();
		$ci->db->select($field_name);
		$ci->db->from(MEMBERS);
		$ci->db->where('id',$login_id);
		$result = $ci->db->get()->row();
		return $result;
	}
?>