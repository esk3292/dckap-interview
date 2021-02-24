<?php $this->load->view('mjesto/templates/header'); ?>
	<section class="top-sec">
		<div class="container-fluid body-content-width">
			<div class="row">
				<div class="room-booking-tab">
				</div>
			</div>
		</div>
	</section>
	<section class="banner_sect_wrap">
		<div class="container main_container">
			<div class="left_side_detail_wrap col-lg-8 col-md-8 col-sm-8 col-xs-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<?php 
							if($product_detail->row()->banner_photos !='')
								$img = base_url().'assets/site-assets/product/product-banner-images/'.$product_detail->row()->banner_photos;
							else
								$img =  base_url()."assets/site-assets/product/product-banner-images/dummyImage.jpg";
						?>
						<div class="item active">
							<img src="<?php echo $img; ?>" class="img-responsive" alt="Los Angeles" style="width:100%;">
						</div>
						<?php 
							if($product_img->num_rows() > 0){
								foreach($product_img->result() as $img){
									if($img->name !='')
										$prd_img = base_url().'assets/site-assets/product/product-original/'.$img->name;
									else
										$prd_img =  base_url()."assets/site-assets/product/product-map/dummyImage.jpg";
						?>	
							<div class="item">
								<img src="<?php echo $prd_img; ?>" class="img-responsive" alt="Chicago" style="width:100%;">
							</div>
						<?php }} ?>
					</div>
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
						<span class="sr-only">Next</span>
					</a>
					<div class="slider_text_wrap">
						<div class="left_side_slide_content">
							<h1><?php echo $product_detail->row()->product_name; ?></h1>
						</div>
					</div>
				</div>
				<h3 class="high-demand"><span>IN HIGH DEMAND :</span> This product is selling fast this week</h3>
			</div>
			<div class="right_side_wrap col-lg-4 col-md-4 col-sm-5 col-xs-12">
				<div class="fixed-side-bar">
					<div class="price-col">
						<li class="price">
							<span class="currency">$</span>
							<span class="amt"><?php echo $product_detail->row()->price; ?></span>
						</li>
						<li class="price">
							<span class="currency">Owner: </span>
							<span class="amt"><?php echo $product_detail->row()->firstname.' '.$product_detail->row()->lastname; ?></span>
						</li>
						<li class="price">
							<span class="currency">Category: </span>
							<span class="amt"><?php echo $product_detail->row()->categoryName; ?></span>
						</li>
					</div>
					<div class="booking-type">
						<ul>
							<li>
								<h3>product Description</h3>
								<?php
									$description = $product_detail->row()->product_description;
									$half_description = substr($description, 0, 100);
									$description_length = strlen($product_detail->row()->product_description);
								?>
								<p class="show-content"><?php echo $half_description.'...'; ?></p>
								<?php if($description_length > 100){ ?>
									<p class="more-content">More</p>
									<div class="hide-contant">
										<p><?php echo $product_detail->row()->product_description; ?></p>
										<p class="less-content">Less</p>
									</div>
								<?php } ?>
							</li>
						</ul>
					</div>					
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		$('#ca-container').contentcarousel();
	</script>
	<script>
		$(document).ready(function()
		{
			$('.more-content').click(function()
			{
				$('.hide-contant').slideDown();
				$('.show-content').css('display','none');
				$(this).css('display','none');
			});
			$('.less-content').click(function()
			{

				$('.hide-contant').slideUp();
				$('.show-content').css('display','block');
				$('.more-content').css('display','block');

			});
		});
	</script>		
	<script>
		$(window).scroll(function() {
			if ($(this).scrollTop() > 100){
				$('.fixed-side-bar').addClass("side-bar-fix");
			} else {
				$('.fixed-side-bar').removeClass("side-bar-fix");
			}

		});
	</script>	
	<script>
		$(window).scroll(function() {
			if ($(this).scrollTop() > 1400){
				$('.fixed-side-bar').removeClass("side-bar-fix");
				$('.fixed-side-bar').addClass("side-bar-fix-bottom");
			} 
			else{
				$('.fixed-side-bar').removeClass("side-bar-fix-bottom");
			}
		});
	</script>