<?php 
$this->load->view('mjesto/templates/header');
 ?>
	<section id="middelpart">
		<div class="container">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="banner_signup">
						<form action="<?php echo base_url();?>">
							<div class="formmodal">
								<div class="input-group login">
									<input class="form-control uname signinform" id="first_name" placeholder="First name"  type="text" name="first_name">
								</div>
								<div class="input-group login">
									<input id="last_name" class="form-control uname signinform" placeholder="Last name"  type="text" name="last_name">
								</div>
								<div class="input-group login">
									<input class="form-control mailimg signinform" id="register_email" placeholder="Email address"  type="text" name="register_email">
								</div>

								<div class="input-group login">
									<input class="form-control mailimg signinform" id="address" placeholder="Address"  type="text" name="address">
								</div>
								<div class="input-group login">
									<input class="form-control mailimg signinform" id="city" placeholder="City"  type="text" name="city">
								</div>
								<div class="input-group login">
									<input class="form-control mailimg signinform" id="state" placeholder="State"  type="text" name="state">
								</div>
								<div class="input-group login">
									<input class="form-control mailimg signinform" id="country" placeholder="Country"  type="text" name="country">
								</div>


								<div class="input-group login">
									<input class="form-control passimg signinform" id="user_password" placeholder="Password"  type="password" name="user_password">
								</div>
								<div class="input-group login">
									<input class="form-control passimg signinform" id="con_password" placeholder="Password"  type="password" name="con_password">
								</div>
								<button type="button" class="btn btncreate" id="signup_here"> Sign up </button>
							</div>
							<span class="popup_stay">Already a member?</span> 
							<a href="<?php echo base_url();?>member-login" ><button type="button" class="btn btn_log"> Log In</button></a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>