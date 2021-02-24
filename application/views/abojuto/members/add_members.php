<?php $this->load->view('abojuto/templates/header'); ?>

<section class="admin_wrapper">
	<?php $this->load->view('abojuto/templates/sidemenu'); ?>
	<div class="admin_wrapper_content">
		<div class="admin_wrapper_scroll">
			<div class="panel_wrap">
				<div class="row">	
					<div class="col-sm-12 col-sm-12 ">
						<div class="panel new_forming">
							<div class="panel_head">
								<?php echo $heading; ?>
							</div>
							<div class="panel_body">
								<?php $this->load->view('abojuto/templates/error_templates'); ?>
								<form class="form-horizontal insert-members" method="POST" action="<?php echo base_url().$admin_url.'/insert-members' ?>" enctype="multipart/form-data">
									<div class="form-group">
										<label class="control-label col-sm-4" for="settings-error"></label>
									</div>
									<div class="form-group member-error-failed">
					            		<label class="control-label col-sm-2"></label>
				                      	<label class="control-label col-sm-10" for="pass-error"><span id="pass-error" class="pas-err pass-msg-err"></span></label>
				                    </div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="firstname">First Name</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="firstname" placeholder="Enter First Name" name="firstname" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="lastname">Last Name</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="lastname" placeholder="Enter last Name" name="lastname" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="email">Email</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="email" placeholder="Email" name="email" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="address">Address</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="address" placeholder="Address" name="address" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="city">City</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="city" placeholder="City" name="city" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="state">State</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="state" placeholder="State" name="state" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="country">Country</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="country" placeholder="Country" name="country" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="password">Password</label>
										<div class="col-sm-10">          
											<input type="password" class="form-control" id="password" placeholder="password" name="password" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="repassword">ReType Password</label>
										<div class="col-sm-10">          
											<input type="password" class="form-control" id="repassword" placeholder="ReType password" value="" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="profile_image">Profile Photo</label>
										<div class="col-sm-10">   
											<div class="upper-files">							  
												<button type="button" class="btn up-cho">Profile Photo</button>
												<div class="below-files">								  
													<input type="file" name="profile_image" id="profile_image">
													<img src="">
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">        
										<div class="col-sm-offset-2 col-sm-10">
											<button type="button" class="btn btn-default new_submit" id="add-members-btn">submit</button>
										</div>
									</div>
								</form>
							</div>									
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
</section>
<link rel="stylesheet" href="<?php echo base_url('assets/admin-assets/admin-css/datepicker.css'); ?>">
<script type="text/javascript">
	$(document).ready(function(){ 
		$.getScript("<?php echo base_url();?>assets/admin-assets/admin-js/bootstrap-datepicker.js", function(){
	      	var startDate = '<?php echo date("d/m/Y");?>';
			var ToEndDate = "<?php echo date('d/m/Y',strtotime('-216 month',strtotime(date('Y-m-d')))); ?>";
		    $('#dob').datepicker({
		        format: 'mm/dd/yyyy',
		        weekStart: 1,
		        autoclose: true,
		        endDate: ToEndDate,
		    }).bind('click',function () {
		$(".datepicker-dropdown").appendTo(".dob_cal");
	    });
	    });
	    
	});
</script>
<?php $this->load->view('abojuto/templates/footer'); ?>