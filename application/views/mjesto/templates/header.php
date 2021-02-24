<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $heading; ?></title>
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/bootstrap.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/style.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/owl.carousel.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/font-awesome.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/fonts.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/product-style.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/responsive.css'); ?>" />
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/style.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/developer.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/sweetalert.css'); ?>">

  <script src="<?php echo base_url('assets/site-assets/site-js/jquery.min.js'); ?>"></script>
  <script src="<?php echo base_url('assets/site-assets/site-js/owl.carousel.min.js'); ?>"></script>
  <script src="<?php echo base_url('assets/site-assets/site-js'); ?>/bootstrap.min.js"></script>
  <script src="<?php echo base_url('assets/site-assets/site-js'); ?>/jquery.easing.1.3.js"></script>
  <script src="<?php echo base_url('assets/site-assets/site-js'); ?>/jquery.contentcarousel.js"></script>
  
  <script src="<?php echo base_url('assets/site-assets/site-js/support.js'); ?>"></script>
  <script src="<?php echo base_url('assets/admin-assets/admin-js/sweetalert-dev.js'); ?>"></script>
  <script>var Baseurl = "<?php echo base_url();?>";</script>
</head>
<body>
  <section id="header">
    <div class="container">
      <div class="row">
        <div class="col-md-2 col-xs-12 col-sm-5">
          <a href="<?php echo base_url(''); ?>">
            <p class="header_para">HomePage</p>
          </a>
        </div>
        <div class="col-md-10 col-xs-12 col-sm-7">
          <ul class="topmenu">
            
            <?php if($login_id ==''){ ?>
              <li><a href="<?php echo base_url('member-register'); ?>">Sign Up</a></li>
              <li><a href="<?php echo base_url('member-login'); ?>">Login</a></li>
            <?php } ?>          
            <?php 
              if($login_id !=''){
                $member_field = array('firstname', 'profile_image');
                $member_helper_details = get_member_details($login_id, $member_field);
            ?>
              <li>
                <ul class="profiledd">
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle logo-profile" data-toggle="dropdown">
                      <span><img src="<?php echo base_url('assets/site-assets/members-images').'/'.$member_helper_details->profile_image; ?>" class="img-responsive profilelogo" /></span> 
                      <span><?php echo "Hi ".$member_helper_details->firstname; ?></span>
                      <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul class="dropdown-menu profile-settings">
                      <li><a href="<?php echo base_url('add-product'); ?>">Add Product</a></li>
                      <li><a href="<?php echo base_url('member-logout'); ?>">Logout</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
            <?php } ?>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <script>
  $(document).ready(function () {
    $('.profiledd').mouseenter(function () {
      $('.profile-settings').show();
    });
    $('.profiledd').mouseleave(function () {
      $('.profile-settings').hide();
    });
  });
  </script>