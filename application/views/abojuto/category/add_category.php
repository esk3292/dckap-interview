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
								<form class="form-horizontal insert-category" method="POST" action="<?php echo base_url().$admin_url.'/insert-update-category'; ?>" enctype="multipart/form-data">
									<div class="form-group">
										<label class="control-label col-sm-4" for="settings-error"></label>
									</div>
									<div class="form-group member-error-failed">
					            		<label class="control-label col-sm-2"></label>
				                      	<label class="control-label col-sm-10" for="pass-error"><span id="pass-error" class="pas-err pass-msg-err"></span></label>
				                    </div>
				                    <input type="hidden" value="<?php if(isset($category_data->id)){ echo $category_data->id; } ?>" name="category_id">
									<div class="form-group">
										<label class="control-label col-sm-2" for="name">Category Name</label>
										<div class="col-sm-10">          
											<input type="text" class="form-control" id="name" placeholder="Enter Category Name" name="name" value="<?php if(isset($category_data->name)){ echo $category_data->name; } ?>" />
										</div>
									</div>
									<div class="form-group">        
										<div class="col-sm-offset-2 col-sm-10">
											<button type="button" class="btn btn-default new_submit" id="add-category-btn">submit</button>
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
<?php $this->load->view('abojuto/templates/footer'); ?>