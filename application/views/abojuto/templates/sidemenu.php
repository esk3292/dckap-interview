<?php 
$current_url = $this->uri->segment(2);
$current_page = $this->uri->segment(3);
?>

<div class="admin_wrapper_sidenav">
	<ul class="sidenav list-unstyled">
		<li class="<?php if($current_url == 'dashboard'){ echo 'active'; } ?>"><a href="<?php echo base_url().$admin_url.'/dashboard'; ?>"> <i class="fa fa-th-large"></i> Dashboard <i class="fa fa-angle-right"></i> </a> </li>
		<li class="subnav <?php if($current_url == 'members-list' || $current_url == 'add-members' || $current_url == 'view-members' || $current_url == 'edit-members' || $current_url == 'members-dashboard'){ echo 'active subnav_open'; } ?>"><a> <i class="fa fa-users"></i> Members <i class="fa fa-angle-right"></i> </a>
			<ul class="subnav_content list-unstyled" <?php if($current_url == 'members-list' || $current_url == 'add-members' || $current_url == 'view-members' || $current_url == 'edit-members' || $current_url == 'members-dashboard'){ echo 'style="display:block;"'; } ?>>
				<li class="<?php if($current_url == 'members-list' || $current_url == 'add-members' || $current_url == 'view-members' || $current_url == 'edit-members'){ echo 'active'; } ?>"><a href="<?php echo base_url().$admin_url.'/members-list'; ?>">Members List</a></li>
			</ul>	
		</li>
		<li class="subnav <?php if($current_url == 'product-list' || $current_url == 'add-product' || $current_url == 'edit-product' || $current_url == 'product-image' || $current_url == 'product-address' || $current_url == 'view-product' || $current_url == 'product-dashboard'){ echo 'active subnav_open'; } ?>"><a> <i class="fa fa-users"></i> Products <i class="fa fa-angle-right"></i> </a>
			<ul class="subnav_content list-unstyled" <?php if($current_url == 'product-list' || $current_url == 'add-product' || $current_url == 'edit-product' || $current_url == 'product-image' || $current_url == 'product-address' || $current_url == 'view-product' || $current_url == 'product-dashboard'){ echo 'style="display:block;"'; } ?>>
				<li class="<?php if($current_url == 'product-list' || $current_url == 'add-product' || $current_url == 'edit-product' || $current_url == 'product-image' || $current_url == 'product-address' || $current_url == 'view-product'){ echo 'active'; } ?>"><a href="<?php echo base_url().$admin_url.'/product-list'; ?>">Product List</a></li>
			</ul>	
		</li>
		<li class="subnav <?php if($current_url == 'category-list' || $current_url == 'add-category' || $current_url == 'edit-category'){ echo 'active'; } ?>"><a> <i class="fa fa-server"></i> Product Attributes <i class="fa fa-angle-right"></i> </a>
			<ul class="subnav_content list-unstyled" <?php if($current_url == 'category-list' || $current_url == 'add-category' || $current_url == 'edit-category'){ echo 'style="display:block;"'; } ?>>
				<li class="<?php if($current_url == 'category-list' || $current_url == 'add-category' || $current_url == 'edit-category'){ echo 'active'; } ?>"><a href="<?php echo base_url().$admin_url.'/category-list'; ?>">Caategory</a></li>
			</ul>	
		</li>
	</ul>
</div>