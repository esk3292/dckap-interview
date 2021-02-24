<?php $current_url = $this->uri->segment(2); $product_id = $this->uri->segment(3); ?>

<?php if($product_id == ''){?>
	<div class="settings-menu">
		<a class="<?php if($current_url == 'add-product' || $current_url == 'edit-product'){ echo 'active'; } ?>" href="<?php echo base_url().$admin_url.'/add-product'; ?>">Product Information</a>
	</div>
<?php }else{?>
	<div class="settings-menu">
		<a class="<?php if($current_url == 'add-product' || $current_url == 'edit-product'){ echo 'active'; } ?>" href="<?php echo base_url().$admin_url.'/edit-product/'.$product_id; ?>">Product Information</a>
		<a class="<?php if($current_url == 'product-image'){ echo 'active'; } ?>" href="<?php echo base_url().$admin_url.'/product-image/'.$product_id; ?>">Product Image</a>
	</div>
<?php } ?>