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
									<?php $this->load->view('abojuto/product/product_menu'); ?>
									<form class="form-horizontal" id="insert-update-form" method="POST" action="<?php echo base_url().$admin_url.'/insert-update-product' ?>" enctype="multipart/form-data">
										<div class="form-group">
											<label class="control-label col-sm-4" for="settings-error"></label>
										</div>
										<div class="form-group member-error-failed">
						            		<label class="control-label col-sm-2"></label>
					                      	<label class="control-label col-sm-10" for="pass-error"><span id="pass-error" class="pas-err pass-msg-err"></span></label>
					                    </div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="owner_id">Owner Name</label>
											<div class="col-sm-10">          
												<select class="form-control" id="owner_id" name="owner_id">
												    <option value="">Choose Owner Name</option>
												    <?php foreach ($members_data as $key => $membersData) {?>
												    	<option value="<?php echo $membersData->id; ?>" <?php if(isset($product_data) && $product_data->owner_id !='' && ($product_data->owner_id == $membersData->id)){ echo "selected"; } ?>><?php echo $membersData->firstname.' '.$membersData->lastname; ?></option>
												    <?php } ?>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="category_type">Category Type</label>
											<div class="col-sm-10">          
												<select class="form-control" id="category_type" name="category_type">
												    <option value="">Choose Category Type</option>
												    <?php foreach ($category_types as $key => $categoryTypes) {?>
												    	<option value="<?php echo $categoryTypes->to_id; ?>" <?php if(isset($product_data) && $product_data->category_type !='' && ($product_data->category_type == $categoryTypes->to_id)){ echo "selected"; } ?>><?php echo $categoryTypes->name; ?></option>
												    <?php } ?>
												</select>
											</div>
										</div>
										<input type="hidden" name="product_id" value="<?php if(isset($product_data) && $product_data->id !=''){ echo $product_data->id; } ?>" />
										<div class="form-group">
											<label class="control-label col-sm-2" for="product_name">Product Name</label>
											<div class="col-sm-10">          
												<input type="text" class="form-control" id="product_name" placeholder="Enter Product Name" name="product_name" value="<?php if(isset($product_data) && $product_data->product_name !=''){ echo $product_data->product_name; } ?>" />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="product_description">product Description</label>
											<div class="col-sm-10">          
												<textarea class="form-control textDescription" id="product_description" name="product_description" cols="70" rows="5" placeholder="product Decription"><?php if(isset($product_data) && $product_data->product_description !=''){ echo $product_data->product_description; } ?></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="price">product Price</label>
											<div class="col-sm-10">          
												<input type="text" class="form-control" id="price" placeholder="Enter product Price" name="price" value="<?php if(isset($product_data) && $product_data->price !=''){ echo $product_data->price; } ?>" onkeypress="return isNumber(event)" />
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2" for="banner_photos">product Banner Image</label>
											<div class="col-sm-10"> 
												<div class="upper-files">							  
													<button type="button" class="btn up-cho">Choose banner Image</button>
													<div class="below-files">							  
														<input type="file" name="banner_photos" id="banner_photos">
														<?php if(isset($product_data) && $product_data->banner_photos !=''){?>
															<img src="<?php echo base_url('assets/site-assets/product/product-banner-images').'/'.$product_data->banner_photos; ?>">
														<?php } ?>
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">        
											<div class="col-sm-offset-2 col-sm-10">
												<button type="button" class="btn btn-default new_submit" id="product-btn">submit</button>
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
	<script type="text/javascript">
		tinymce.init({ 
			selector:'.textDescription, .textRules, .textPolicy' 
		});
	</script>
<?php $this->load->view('abojuto/templates/footer'); ?>