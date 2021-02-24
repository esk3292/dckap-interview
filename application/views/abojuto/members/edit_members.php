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
								<form class="form-horizontal insert-edit-members" method="POST" action="<?php echo base_url().$admin_url.'/update-members' ?>" enctype="multipart/form-data">
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
											<input type="text" class="form-control" id="firstname" placeholder="Enter First Name" name="firstname" value="<?php echo $members_data->firstname; ?>" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="lastname">Last Name</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="lastname" placeholder="Enter last Name" name="lastname" value="<?php echo $members_data->lastname; ?>" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="email">Email</label>
										<div class="col-sm-10">          
											<?php echo $members_data->email; ?>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="address">Address</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="address" placeholder="Address" name="address" value="<?php echo $members_data->address; ?>" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="city">City</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="city" placeholder="City" name="city" value="<?php echo $members_data->city; ?>" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="state">State</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="state" placeholder="State" name="state" value="<?php echo $members_data->state; ?>" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="country">Country</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="country" placeholder="Country" name="country" value="<?php echo $members_data->country; ?>" />
										</div>
									</div>
									<input type="hidden" name="member_id" value="<?php echo $members_data->id; ?>">
									<div class="form-group">
										<label class="control-label col-sm-2" for="profile_image">Profile Photo</label>
										<div class="col-sm-10">   
											<div class="upper-files">							  
												<button type="button" class="btn up-cho">Profile Photo</button>
												<div class="below-files">								  
													<input type="file" name="profile_image" id="profile_image">
													<img src="<?php echo base_url().'assets/site-assets/members-images/'.$members_data->profile_image; ?>">
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">        
										<div class="col-sm-offset-2 col-sm-10">
											<button type="button" class="btn btn-default new_submit" id="edit-members-btn">submit</button>
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
<?php $this->load->view('abojuto/templates/footer'); ?>