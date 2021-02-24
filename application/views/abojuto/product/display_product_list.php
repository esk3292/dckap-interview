<?php $this->load->view('abojuto/templates/header'); ?>
	<section class="admin_wrapper">
		<?php $this->load->view('abojuto/templates/sidemenu'); ?>
		<div class="admin_wrapper_content">
			<div class="admin_wrapper_scroll">
				<div class="panel_wrap">
					<div class="row">	
						<div class="col-sm-12 col-sm-12 ">
							<div class="panel">
								<div class="panel_head">
									<div class=" leaf-hds full-left"><?php echo $heading; ?></div>
									<div class=" right-hds pull-right">
										<div class="menu-admin-links">
											<ul class="avr-menus">
												<li><a href="<?php echo  base_url().$admin_url.'/add-product'; ?>">+ Add Product</a></li>
												<li class="dtn"><a href="javascript:void(0);">Other Actions <i class="fa fa-angle-down"></i></a>
													<div class="post-abs">
														<ul class="drp-menus">
															<!-- <li><a href="javascript:void(0);" onclick="return commonCheckValidation('Active');" title="Active">Active</a></li> -->
															<li><a href="javascript:void(0);" onclick="return commonCheckValidation('Inactive');" title="Inactive">Inactive</a></li>
															<li><a href="javascript:void(0);" onclick="return commonCheckValidation('Delete');" title="Delete">Delete</a></li>
														</ul>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel_body">
									<?php $this->load->view('abojuto/templates/error_templates'); ?>
									<div class="data_table_wrap">
										<?php $redirectUrl = base_url().$admin_url.'/common-product-validation'; ?>
										<form method="POST" action="<?php echo $redirectUrl; ?>" id="common-submit">
											<table id="admin_table" class="display" cellspacing="0" width="100%">
												<thead>
													<tr>
														<th><input type="checkbox" id="check-all"></th>
														<th>product Name</th>
														<th>Price</th>
														<th>Added By</th>
														<th>Status</th>
														<th>Created Date</th>
														<th>Product Link</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<?php foreach($product_list as $key => $productData){?>
														<tr>
															<td><input type="checkbox" name="checkbox_id[]" class="checkboxId" value="<?php echo $productData->id; ?>" /></td>
															<td><?php echo $productData->product_name; ?></td>
															<td><?php echo $productData->price; ?></td>
															<td><?php echo $productData->firstname.' '.$productData->lastname; ?></td>
															<td> <a class="btn btn-default stat-in-act" href="<?php echo base_url().$admin_url.'/update-product-status/'.$productData->id.'/'.$productData->status; ?>"><?php echo $productData->status; ?></a></td>
															<td><?php echo date('Y-m-d',strtotime($productData->date_added)); ?></td>
															<td> <a href="<?php echo base_url('product-detail').'/'.$productData->seo_url; ?>" class="btn btn-default">click here</a></td>
															<td>
																<div class="action_btn_wrap">
																	<a href="<?php echo base_url().$admin_url.'/edit-product/'.$productData->id; ?>"><i title="edit" class="fa fa-pencil"></i></a>
																	<a href="<?php echo base_url().$admin_url.'/view-product/'.$productData->id; ?>"><i title="view" class="fa fa-eye"></i></a>
																	<a href="<?php echo base_url().$admin_url.'/delete-product/'.$productData->id; ?>"><i title="view" class="fa fa-trash"></i></a>
																</div>
															</td>
														</tr>
													<?php } ?>
												</tbody>
											</table>
											<input type="hidden" name="status" value="" id="common-status">
										</form>
									</div>
								</div>									
							</div>
						</div>
					</div>
				</div>			
			</div>
		</div>
	</section>
	<script src="<?php echo base_url('assets/admin-assets/admin-js/custom.js'); ?>"></script>
<?php $this->load->view('abojuto/templates/footer'); ?>