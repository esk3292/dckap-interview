<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'mjesto/home/home_page';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

/* abojuto - admin */

$adminUrl = $this->config->item('admin_url');

$route[$adminUrl] = "abojuto/accounts";
$route[$adminUrl.'/admin-login-check'] = "abojuto/accounts/admin_login_check";
$route[$adminUrl.'/logout'] = "abojuto/accounts/logout";
$route[$adminUrl.'/dashboard'] = "abojuto/dashboard/dashboard";
$route[$adminUrl.'/display-admin-list'] = "abojuto/admin/display_admin_list";

$route[$adminUrl.'/members-list'] = "abojuto/members/display_members_list";
$route[$adminUrl.'/members-dashboard'] = "abojuto/members/dashboard";
$route[$adminUrl.'/add-members'] = "abojuto/members/add_members";
$route[$adminUrl.'/insert-members'] = "abojuto/members/insert_members";
$route[$adminUrl.'/edit-members/(:any)'] = "abojuto/members/edit_members/$1";
$route[$adminUrl.'/update-members'] = "abojuto/members/update_members";
$route[$adminUrl.'/view-members/(:any)'] = "abojuto/members/view_members/$1";
$route[$adminUrl.'/delete-members/(:any)'] = "abojuto/members/delete_members/$1";
$route[$adminUrl.'/update-member-status/(:any)/(:any)'] = "abojuto/members/update_member_status/$1/$2";
$route[$adminUrl.'/export-member-list'] = "abojuto/members/export_member_list";
$route[$adminUrl.'/common-member-validation'] = "abojuto/members/common_member_validation";

$route[$adminUrl.'/product-dashboard'] = "abojuto/product/dashboard";
$route[$adminUrl.'/product-list'] = "abojuto/product/display_product_list";
$route[$adminUrl.'/add-product'] = "abojuto/product/add_product";
$route[$adminUrl.'/edit-product/(:any)'] = "abojuto/product/add_product/$1";
$route[$adminUrl.'/insert-update-product'] = "abojuto/product/insert_update_product";
$route[$adminUrl.'/product-image/(:any)'] = "abojuto/product/product_image/$1";
$route[$adminUrl.'/insert-update-images'] = "abojuto/product/update_product_image";
$route[$adminUrl.'/product-address/(:any)'] = "abojuto/product/product_address/$1";
$route[$adminUrl.'/get-product-location'] = "abojuto/product/get_product_location";
$route[$adminUrl.'/update-product-address'] = "abojuto/product/update_product_address";
$route[$adminUrl.'/update-product-status/(:any)/(:any)'] = "abojuto/product/update_product_status/$1/$2";
$route[$adminUrl.'/delete-product/(:any)'] = "abojuto/product/delete_product/$1";
$route[$adminUrl.'/view-product/(:any)'] = "abojuto/product/view_product/$1";
$route[$adminUrl.'/common-product-validation'] = "abojuto/product/common_product_validation";
$route[$adminUrl.'/delete-prop-image/(:any)/(:any)'] = "abojuto/product/delete_prop_image/$1/$2";

$route[$adminUrl.'/category-list'] = "abojuto/category/display_category_list";
$route[$adminUrl.'/add-category'] = "abojuto/category/add_category";
$route[$adminUrl.'/edit-category/(:any)'] = "abojuto/category/add_category/$1";
$route[$adminUrl.'/insert-update-category'] = "abojuto/category/insert_update_category";
$route[$adminUrl.'/view-category/(:any)'] = "abojuto/category/view_category/$1";
$route[$adminUrl.'/update-category-status/(:any)/(:any)'] = "abojuto/category/update_category_status/$1/$2";
$route[$adminUrl.'/common-category-validation'] = "abojuto/category/common_category_validation";

/*mjesto - site*/

$route['Home'] = 'mjesto/home/home_page';

$route['search-result'] = 'mjesto/search/search_page';

$route['member-register'] = 'mjesto/member/member_register';
$route['signup-user'] = 'mjesto/member/register_user';
$route['member-login'] = 'mjesto/member/member_login';
$route['member-login-check'] = 'mjesto/member/member_login_check';
$route['member-login-process'] = 'mjesto/member/member_login_process';
$route['member-logout'] = 'mjesto/member/member_logout';

$route['add-product'] = 'mjesto/product/add_product';
$route['save-member-product'] = 'mjesto/product/save_member_product';

$route['product-detail/(:any)'] = 'mjesto/product/product_detail/$1';
