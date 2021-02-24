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
								<?php if($this->session->userdata('redirect-error')){?>
									<div class="err-thr">
										<?php if($this->session->userdata('redirect-error') !=''){?>
			        				    	<label class="control-label" for="pass-error"><span id="pass-error" class="pas-err"><?php echo $this->session->userdata('redirect-error'); unset($_SESSION['redirect-error']); ?></span></label>
			        				    <?php }else if($this->session->userdata('redirect-success')){ ?>
			        				    	<label class="control-label" for="pass-error"><span id="pass-error" class="pas-succ"><?php echo $this->session->userdata('redirect-success'); unset($_SESSION['redirect-success']); ?></span></label>
			        				    <?php } ?>
			        				</div>
			        			<?php } ?>
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
											<?php echo $members_data->firstname; ?>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="lastname">Last Name</label>
										<div class="col-sm-10">          
											<?php echo $members_data->lastname; ?>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-2" for="email">Email</label>
										<div class="col-sm-10">          
											<?php echo $members_data->email; ?>
										</div>
									</div>
									<input type="hidden" name="member_id" value="<?php echo $members_data->id; ?>">
									<div class="form-group">
										<label class="control-label col-sm-2" for="profile_image">Profile Photo</label>
										<div class="col-sm-10">   
											<div class="upper-files">							  
												<div class="below-files">								  
													<input type="file" name="profile_image" id="profile_image">
													<img src="<?php echo base_url().'assets/site-assets/members-images/'.$members_data->profile_image; ?>">
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">        
										<div class="col-sm-offset-2 col-sm-10">
											<a href="<?php echo base_url().$admin_url.'/members-list'; ?>" class="btn btn-default">back</a>
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
		    });
	    });
	    
	  });
</script>
<?php $this->load->view('abojuto/templates/footer'); ?>