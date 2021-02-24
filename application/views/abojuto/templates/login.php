<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin Login Page</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/bootstrap.min.css'); ?>">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/style.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/form.css'); ?>">
		<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/support.css'); ?>">
		<script src="<?php echo base_url('assets/admin-assets/admin-js/jquery-3.2.1.min.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/bootstrap.min.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/chart.min.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/main.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/custom-chart.js'); ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/jquery.dataTables.min.js') ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/dataTables.bootstrap.min.js') ?>"></script>
		<script src="<?php echo base_url('assets/admin-assets/admin-js/support.js'); ?>"></script>
	</head>
	<body class="admin-hiden">
		<?php $banner_image =  base_url('assets/admin-assets/admin-images/admin-settings-image').'/'.$this->config->item('background_image');?>
		<section class="login-structure" style="background-image:url(<?php echo $banner_image; ?>);    background-size: cover;    background-repeat: no-repeat;">
			<div class="admin-background">
				<div class="login-funct">
					<div class="funct-pages">
						<?php $this->load->view('abojuto/templates/error_templates'); ?>
						<a href="javascript:void(0);"><img src="<?php echo base_url('assets/admin-assets/admin-images/admin-settings-image').'/'.$admin_logo; ?>" alt="images" class="img-responsive admin_main_login"></a>
						<form class="login-queries" id="admin-login-form" method="POST" action="<?php echo base_url().$admin_url.'/admin-login-check'; ?>">
							<div class="form-group">
								<label class="control-label col-sm-4" for="settings-error"></label>
							</div>
							<div class="form-group member-error-failed">
			            		<label class="control-label col-sm-2"></label>
		                      	<label class="control-label col-sm-10" for="pass-error"><span id="pass-error" class="pas-err pass-msg-err"></span></label>
		                    </div>
							<div class="group-control">
								<input type="text" class="form-control" name="username" placeholder="Please Enter Your username" id="username">
							</div>
							<div class="group-control">
								<input type="password" class="form-control" name="password" placeholder="Please Enter Your password" id="password">
							</div>
							<div class="sub-details">
								<button type="submit" class="btn login-sub" id="admin-login-btn">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>