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
									<?php $this->load->view('abojuto/product/product_menu'); ?>
									<form class="form-horizontal" id="update-image-form" method="POST" action="<?php echo base_url().$admin_url.'/insert-update-images' ?>" enctype="multipart/form-data">
										<div class="form-group">
											<label class="control-label col-sm-4" for="settings-error"></label>
										</div>
										<div class="form-group member-error-failed">
						            		<label class="control-label col-sm-2"></label>
					                      	<label class="control-label col-sm-10" for="pass-error"><span id="pass-error" class="pas-err pass-msg-err"></span></label>
					                    </div>
										
										<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
										
										<div class="form-group">
											<label class="control-label col-sm-2" for="product_photos">Product Images</label>
											<div class="col-sm-10"> 
												<div class="upper-files">							  
													<button type="button" class="btn up-cho">Choose Product Images</button>
													<div class="below-files">							  
														<input type="file" name="product_photos[]" id="product_photos" multiple />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<?php foreach ($product_image as $key => $productImage) {?>
												<div class="col-sm-3 text-center"> 
													<div class="upper-files">							  
														<div class="below-files">							  
															<img class="cond-widths" src="<?php echo base_url('assets/site-assets/product/product-map').'/'.$productImage->name; ?>">
														</div>
														<div class="delect-points">
														  <a href="<?php echo base_url().$admin_url.'/delete-prop-image/'.$productImage->id.'/'.$product_id; ?>"><i class="fa fa-trash"></i></a>
														</div>
													</div>
												</div>
											<?php } ?>
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