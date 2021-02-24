<?php $this->load->view('mjesto/templates/header'); ?>
	<section id="middelpart">
		<div class="container">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="banner_signup">
							<?php $this->load->view('mjesto/templates/error_templates'); ?>
							<div class="input-group login">
								<input class="form-control mailimg signinform" id="email" placeholder="Email or user name" aria-describedby="basic-addon1" type="text" name="email">
							</div>
							<div class="input-group login">
								<input class="form-control passimg signinform" id="password" placeholder="Password" aria-describedby="basic-addon1" type="password" name="password">
							</div>
						</div>
						<button class="btn btn-login1 sign-in-btn" type="submit" id="signin_click">Log In</button>
						<span class="popup_stay">Don't have an account?</span>
						<a href="<?php echo base_url();?>member-register" ><button type="button" class="btn btn_log"> Sign Up</button></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		$(document).on('click','.sign-in-btn',function(){
			var email = $('#email').val();
			var password = $('#password').val();
			if($("#remember").prop('checked') == true)
			    var remember = 1;
			else
				var remember = 2;
			
			if(email == ''){
				$("#pass-error").text('Enter your email address');
				$("#pass-error").css('display','block');
				$('#email').focus();
				return false;
			}

			if(password == ''){
				$("#pass-error").text('Enter your password');
				$("#pass-error").css('display','block');
				$('#password').focus();
				return false;
			}
			var error_msg = 0;

			$.ajax({
				url:Baseurl+'member-login-check',
				type:'POST',
				data:{'email':email,'password':password,'remember':remember},
				dataType:'json',
				success:function(res){
					if(res.stat == 1){
						window.location.href=Baseurl+'member-login-process';
					}
					else{
						$("#pass-error").text(res.message);
						$("#pass-error").css('display','block');
					}
				}
			});
		});
	</script>