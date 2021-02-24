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
									<form class="form-horizontal" id="insert-update-form" method="POST" action="<?php echo base_url().$admin_url.'/insert-update-product' ?>" enctype="multipart/form-data">
										<div class="view-product-tabs">
										    <ul class="nav nav-tabs">
	                                          <li class="active"><a data-toggle="tab" href="#mn1">Product Information</a></li>
	                                          <li class=""><a data-toggle="tab" href="#mn2">Product Image</a></li>
	                                        </ul>
											<div class="tab-content">
												<div id="mn1" class="tab-pane fade in active">
												  	<div class="form-group">
														<label class="control-label col-sm-2" for="owner_id">Owner Name</label>
														<div class="col-sm-10">          
															<?php echo $product_data->firstname.' '.$product_data->lastname; ?>
														</div>
													</div>
													<div class="form-group">
														<label class="control-label col-sm-2" for="categoryName">Category Type</label>
														<div class="col-sm-10">          
															<?php echo $product_data->categoryName; ?>
														</div>
													</div>
													<input type="hidden" name="product_id" value="<?php if(isset($product_data) && $product_data->id !=''){ echo $product_data->id; } ?>" />
													<div class="form-group">
														<label class="control-label col-sm-2" for="product_name">product Name</label>
														<div class="col-sm-10">          
															<?php echo $product_data->product_name; ?>
														</div>
													</div>
													<div class="form-group">
														<label class="control-label col-sm-2" for="product_description">product Description</label>
														<div class="col-sm-10">          
															<?php echo $product_data->product_description; ?>
														</div>
													</div>
													<div class="form-group">
														<label class="control-label col-sm-2" for="price">product Price</label>
														<div class="col-sm-10">          
															<?php echo $product_data->price; ?>
														</div>
													</div>
													<div class="form-group">
														<label class="control-label col-sm-2" for="banner_photos">product Banner Image</label>
														<div class="col-sm-10"> 
															<div class="upper-files">							  
																<div class="below-files">							  
																	<?php if(isset($product_data) && $product_data->banner_photos !=''){?>
																		<img src="<?php echo base_url('assets/site-assets/product/product-banner-images').'/'.$product_data->banner_photos; ?>">
																	<?php } ?>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div id="mn2" class="tab-pane fade">
													<h3>product Images</h3>
													<div class="form-group">
														<?php foreach ($product_image as $key => $productImage) {?>
															<div class="col-sm-3 text-center"> 
																<div class="upper-files">							  
																	<div class="below-files">							  
																		<img class="cond-widths" src="<?php echo base_url('assets/site-assets/product/product-map').'/'.$productImage->name; ?>">
																	</div>
																</div>
															</div>
														<?php } ?>
													</div>
												</div>
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