<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Member extends Site_Controller {
    	function __construct(){
            parent::__construct();
            $this->load->model('siteModel/User_model','User_model');
        }

        public function register_user(){
            $first_name     = $this->input->post('first_name');
            $last_name      = $this->input->post('last_name');
            $register_email = $this->input->post('email');
            $address = $this->input->post('address');
            $city = $this->input->post('city');
            $state = $this->input->post('state');
            $country = $this->input->post('country');
            $user_password  = $this->input->post('password');
            $already_email = $this->User_model->user_detail($register_email);
            if($already_email->num_rows() > 0){
                $msg = 'exit';
            }else{
            
                $user_detail = array(
                                'firstname'=>$first_name,
                                'lastname'=>$last_name,
                                'password'=>md5($user_password),
                                'email'=>$register_email,
                                'address'=>$address,
                                'city'=>$city,
                                'state'=>$state,
                                'country'=>$country
                                );
                $already_email = $this->User_model->insert_data($user_detail);
                $lastUserId = $this->db->insert_id();
                $user_data = $this->User_model->user_detail($register_email);
                $userdata = array (
                                    'fc_session_user_id' => $user_data->row ()->id,
                                    'session_user_email' => $user_data->row ()->email
                                    );
                $this->session->set_userdata ( $userdata );
                $msg = 'success';
                die;
            }
            echo $msg;
        }

        public function member_register(){
            if($this->checkLogin('U') == '')
                $this->load->view('mjesto/templates/member_register',$this->data);
            else
                redirect('search-result');
        }

        public function member_login(){
            if($this->checkLogin('U') == '')
        	   $this->load->view('mjesto/templates/member_login',$this->data);
            else
                redirect('search-result');
        }

        public function member_login_check(){
            $email = $this->input->post('email');
            $password = md5($this->input->post('password'));

            $check_member = $this->User_model->member_login_check($email,$password);

            if($check_member->num_rows() == 1){
                $check_member = $this->User_model->member_login_check($email,$password,'Active');
                if($check_member->num_rows() == 1){
                    $userdata = array (
                                'fc_session_user_id' => $check_member->row()->id,
                                'session_user_email' => $check_member->row()->email
                            );
                    $this->session->set_userdata ( $userdata );

                    if($remember == 1){
                        $memberid = $this->encrypt->encode($check_member->row()->id);
                        $cookie = array(
                            'name'   => 'member_session',
                            'value'  => $memberid,
                            'expire' => 86400,
                            'secure' => FALSE
                        );
                        
                        $this->input->set_cookie($cookie); 
                    }

                    $ret['stat'] = 1;
                    $ret['message'] = "Login Success";
                }
                else{
                    $ret['stat'] = 0;
                    $ret['message'] = 'Your Status is inactive, Contact admin for futher details';
                }
            }
            else{
                $ret['stat'] = 0;
                $ret['message'] = 'Username or Password should be wrong';
            }
            echo json_encode($ret);
        }

        public function member_login_process(){
            if($this->checkLogin('U')){
                $this->session->set_userdata('redirect-success','login Success');
                redirect('search-result');
            }
            else{
                redirect();
            }
        }

        public function member_logout(){
            $sitedata = array(
                            'fc_session_user_id' => '',
                            'session_user_email' => ''
                        );
            $this->session->set_userdata($sitedata);

            $cookie = array(
                'name'   => 'member_session',
                'value'  => '',
                'expire' => -86400,
                'secure' => FALSE
            );
            $this->input->set_cookie($cookie);
            redirect('member-login');
        }
    }
?>