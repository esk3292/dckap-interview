<?php $this->load->view('mjesto/templates/header'); ?>
	<section class="banner-sect" id="partnersbanner">
		<div class="banner-sliders">
			<div class="slide-options">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<div class="carousel-inner">
						<div class="item active">
							<img src="<?php echo base_url('assets/site-assets/site-design-images'); ?>/bckimg.jpg" alt="Banner">
							<span class="cover-ban-slider"></span>
						</div>
				</div>
			</div>
			<div class="banner-partsslider">
				<div class="container">
					<div class="">
						<div class="col-md-6 col-sm-8">
						</div>
						<div class="col-md-6 col-sm-4">
							<ul class="topmenu partner_number">
								<li><a href="#"><span><img src="<?php echo base_url('assets/site-assets/site-design-images'); ?>/partner-tel.svg" class="img-responsive whitecal"/></span><span class="numbertel">+91-123-456-7890</span></a></li>
							</ul>
						</div>
					</div>
					<div class="">
						<div class="col-md-7 col-sm-6">
							<div class="leftpartnercontent">
								<h5>More Products, More Sales, Better Customer Satisfaction </h5>
								<p>Reach millions of customers and grow your business</p>
							</div>
						</div>
						<div class="col-md-5 col-sm-6">
							<div class="form-width">
								<form enctype="multipart/form-data" name="add_member_product" id="add_member_product" action="<?php echo base_url();?>save-member-product" method="post">
									<div class="form-group">
										<select class="form-control partnetforms new_partners" name="category_type" id="category_type">
											<option value="">Select Category</option>
											<?php foreach($category_types as $categoryTypes){ ?>
											<option value="<?php echo $categoryTypes->to_id; ?>"><?php echo $categoryTypes->name; ?></option>
											<?php } ?>
											
										</select>
									</div>
									<div class="form-group">
										<input type="text" class="form-control partnetforms" id="product_name" placeholder="Product Name" name="product_name">
									</div>
									<div class="form-group">
										<textarea class="form-control partnetforms" rows="3" id="product_description" placeholder="Product description" name="product_description"></textarea>
									</div>
									<div class="form-group">
										<input type="text" class="form-control partnetforms" id="product_price" placeholder="Product price" name="price" onkeypress="return isNumber(event)">
									</div>
									<div class="form-group">
										<div class="chose-files">
											<button class="btn ch-btns" type="buttton">Choose Banner Image</button>
											<div class="obts-methos">
												<input type="file" id="banner_photos" name="banner_photos">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="chose-files">
											<button class="btn ch-btns" type="buttton">Choose Product Image</button>
											<div class="obts-methos">
												<input type="file" id="product_photos" name="product_photos[]" multiple >
											</div>
										</div>
									</div>
									<h5 class="carouselcontact"><input type="button" class="btn btn-default contactbtn partnerstypebtn" role="button" value="Add Product" id="submit_product_req"></h5>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
		$('#submit_product_req').click(function() {
		    var category_type = $('#category_type').val();
			var product_name = $('#product_name').val();
			var product_description = $('#product_description').val();
			var product_price = $('#product_price').val();

		    if (category_type == '') {
		        $('#category_type').focus();
		        return false;
		    } else if (product_name == '') {
		        $('#product_name').focus();
		        return false;
		    } else if (product_price == '') {
		        $('#product_price').focus();
		        return false;
		    } else {
		        $('#add_member_product').submit();
		    }

		});
	</script>