<?php $this->load->view('abojuto/templates/header'); ?>
<section class="admin_wrapper">
	<?php $this->load->view('abojuto/templates/sidemenu'); ?>
	<div class="admin_wrapper_content">
		<div class="admin_wrapper_scroll">
			<?php $this->load->view('abojuto/templates/error_templates'); ?>
			<div class="dasboard_card_wrap">
				<div class="row">	
					<div class="col-xs-12 col-sm-4 ">
						<div class="dasboard_card dasboard_card_red">
							<span class="dasboard_card_title">TOTAL MEMBERS</span>
							<h2 class="dasboard_card_details"><?php echo $total_members_count; ?></h2>
							<span class="dasboard_card_info"></span>
						</div>
					</div>
					<div class="col-xs-12 col-sm-4 ">
						<div class="dasboard_card dasboard_card_orange">
							<span class="dasboard_card_title">TOTAL PRODUCTS</span>
							<h2 class="dasboard_card_details"><?php echo $total_products_count; ?></h2>
							<span class="dasboard_card_info"></span>
						</div>
					</div>
				</div>	
			</div>
			
					
		</div>
	</div>
</section>
<?php $this->load->view('abojuto/templates/footer'); ?>