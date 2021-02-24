<?php $this->load->view('mjesto/templates/header'); ?>
	<link rel="stylesheet" href="<?php echo base_url('assets/site-assets/site-css/slider-ui.css'); ?>">
	<script src="<?php echo base_url('assets/site-assets/site-js/jquery-ui.js');?>"></script>
	<section class="top-sec">
		<div class="container-fluid body-content-width">
			<div class="row">
				<div class="room-booking-tab">
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container  big_menu_wrpr_serch_page_wrpr">
			<div class="row">
				<div class="col-md-12">
					<div class="input-group topsearchsection" style="box-shadow: 0 2px 8px rgba(0,0,0,.2);">
						<form id="search-page-form" method="GET" action="<?php echo base_url('search-result'); ?>">        
							<input type="text" class="form-control searchtext desktopserachtext" id="search-product" name="product" value="<?php echo $search_product; ?>" placeholder="Search term..." style="border-left:1px solid #ccc;">
							<span class="input-group-btn">
								<button class="btn btn-default searchtext2" id="search-page-btn" type="button">Search</button>
							</span>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container big_menu_wrpr_serch_page_wrpr">
			<div class="row">
				<div class="col-md-3">
					
						<div class="search-widths">
						<h4 class="showingresults">Showing <?php echo count($search_result); ?> Result(s) for <?php echo $search_product; ?> </h4>
						<div class="guridon-promise">
							<h4 class="full_width-promise">DCKAP PROMISE</h4>
						</div>
						<div class="fixed-side-bars">
						<div class="panel panel-default leftpanel">
							<div class="panel-body">
								<div class="smallheading">
									<h5>Contact Us :</h5>
									<ol type="number">
										<li>Chennai - +044 2345 6543</li>
										<li>Madhurai - +0454 2345 6544</li>
										<li>Theni - +04546 2345 6545</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</div>
					
				</div>
				<div class="col-md-9">
					<div class="search-widths">
						<div class="row righsidecontent">
							<div class="col-md-12">
								<ul class="sorting">
								</ul>
							</div>
						</div>
						<div id="textbox1">
							<div class="row righsidecontent">
								<ul class="rightcontent" id="search_li_result">
									<?php 
										if(count($search_result) > 0){
										foreach ($search_result as $key => $searchResult) {?>
										<li class="col-md-6">
											<div class="col-item">
												<div class="photo">
													<a href="javascript:void(0);"><img src="<?php echo base_url('assets/site-assets/product/product-banner-images').'/'.$searchResult->banner_photos; ?>" class="img-responsive" alt="<?php echo $searchResult->product_name; ?>"></a>
													<p class="photopara"><span class="small"></span> RS <?php echo $searchResult->price; ?></p>
												</div>
												<div class="info">
													<div class="row">
														<div class="price col-md-8">
															<h5 class="toppara"><?php echo $searchResult->product_name; ?> </h5>
															<h5 class="price-text-color belowpara"><?php echo $searchResult->categoryName; ?></h5>
														</div>
														<div class="rating  col-md-4">
															<h5 class="carouselcontact"><a href="<?php echo base_url('product-detail').'/'.$searchResult->seo_url; ?>" class="btn btn-default contactbtn" role="button">View Details</a></h5>
														</div>
													</div>
													<div class="clearfix">
													</div>
												</div>
											</div>
										</li>
									<?php }}else{ echo "No product found"; } ?>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<style>
	.col-item .photo img {
		width: 456px;
		height: 241px;
		object-fit: cover;
		margin:0px;
	}
</style>