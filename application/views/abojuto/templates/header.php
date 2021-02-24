<!DOCTYPE html>
<html lang="en">
	<head>
		<title><?php echo $heading; ?></title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/bootstrap.min.css'); ?>">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/style.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/form.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/support.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/sweetalert.css'); ?>">
		<script src="<?php echo base_url('assets/admin-assets/admin-js/jquery-3.2.1.min.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/bootstrap.min.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/chart.min.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/main.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/jquery.dataTables.min.js') ?>"></script>
  		<script src="<?php echo base_url('assets/admin-assets/admin-js/dataTables.bootstrap.min.js') ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/support.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/sweetalert-dev.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/tinymce/js/tinymce/tinymce.min.js'); ?>"></script>
		<script type="text/javascript">
			var baseAdminurl = "<?php echo base_url().$admin_url; ?>";
		</script>
	</head>
	<body>
		<div class="site_wrapper">
			<header class="site_nav_wrapper">
				<div class="header_wrapper_logo">
					<img src="<?php echo base_url('assets/admin-assets/admin-images/admin-settings-image').'/'.$admin_logo; ?>" />
				</div>
				<div class="header_wrapper_nav">
					<span class="hover_logout">
					<a href="<?php echo base_url().$admin_url.'/logout'; ?>">
						<img class="admin_profile" src="<?php echo base_url('assets/admin-assets/admin-images/logout.png') ?>" />
					</a>
					<div class="logout_text">
					Logout
					</div>
					</span>
				</div>
			</header>
			