$(document).on('click','#pass-btn',function(){
	var password = $('#password').val();
	var Newpassword = $('#Newpassword').val();
	var Cnfpassword = $('#Cnfpassword').val();

	var pass_verification = /^[a-zA-Z0-9]+$/;
	var pass_result = pass_verification.test(Cnfpassword);

	if(password == ''){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$('.pass-msg-err').text('Enter old password');
		$('#password').focus();
		return false;
	}

	if(Newpassword == ''){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$('.pass-msg-err').text('Enter new password');
		$('#Newpassword').focus();
		return false;
	}

	if(Newpassword.length <= 5){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$('.pass-msg-err').text('Your password length should be minimum 6 letters');
		$('#Newpassword').focus();
		return false;
	}

	re = /[0-9]/;
	if(!re.test(Newpassword)){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$("#pass-msg-err").text('Your password must contain 1 number');
		$('#Newpassword').focus();
		return false;
	}
	re = /[a-z]/;
	if(!re.test(Newpassword)){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$("#pass-msg-err").text('Your password must contain at least one lowercase letter');
		$('#Newpassword').focus();
		return false;
	}
	re = /[A-Z]/;
	if(!re.test(Newpassword)){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$("#pass-msg-err").text('Your password must contain at least one uppercase letter');
		$('#Newpassword').focus();
		return false;
	}

	if(Cnfpassword == ''){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$('.pass-msg-err').text('Enter conform password');
		$('#Cnfpassword').focus();
		return false;
	}

	if(Newpassword != Cnfpassword){
		$('.member-error-failed').css('display','block');
		$('.member-error-success').css('display','none');
		$('.pass-msg-err').text('Conform password is wrong');
		$('#Cnfpassword').focus();
		return false;	
	}

	$.ajax({
		url:baseAdminurl+'/update-password',
		type:'POST',
		data:{"password":password,"Newpassword":Newpassword,"Cnfpassword":Cnfpassword},
		dataType:'json',
		success:function(res){
			if(res.stat == 0){
				$('.member-error-failed').css('display','block');
				$('.pass-msg-err').text(res.message);
				setTimeout(function(){
					$('.member-error-failed').css('display','none');
				}, 2500);
			}
			else{
				$('.member-error-success').css('display','block');
				$('.member-error-failed').css('display','none');
				$('.pass-msg-succ').text(res.message);
				setTimeout(function(){
					$('.member-error-success').css('display','none');
				}, 2500);
			}
		}
	});
});

function isEmail(email) {
	var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	return regex.test(email);
}

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
	if(charCode == 46)return false;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

function isNumberWithDot(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
	if(charCode == 46)return false;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

$(document).on('click','#add-members-btn',function(){
	var firstname = $('#firstname').val();
	var lastname = $('#lastname').val();
	var email = $('#email').val();
	var address = $('#address').val();
	var city = $('#city').val();
	var state = $('#state').val();
	var country = $('#country').val();
	var password = $('#password').val();
	var repassword = $('#repassword').val();

	if(firstname == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your first name');
		$('#firstname').focus();
		return false;
	}

	if(lastname == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your last name');
		$('#lastname').focus();
		return false;
	}

	if(email == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your email');
		$('#email').focus();
		return false;
	}

	if(!isEmail(email)){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter valid email');
		$('#email').focus();
		return false;
	}

	if(address == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your address');
		$('#address').focus();
		return false;
	}

	if(city == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your city');
		$('#city').focus();
		return false;
	}

	if(state == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your state');
		$('#state').focus();
		return false;
	}

	if(country == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your country');
		$('#country').focus();
		return false;
	}

	if(password == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your password');
		$('#password').focus();
		return false;
	}

	if(password.length < 6){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Your password should be minimum of 6 characters');
		$('#password').focus();
		return false;
	}

	if(repassword == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your first name');
		$('#repassword').focus();
		return false;
	}

	if(password != repassword){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Password and conform password should be same');
		$('#repassword').focus();
		return false;
	}

	$('.insert-members').submit();

});

$(document).on('click','#edit-members-btn',function(){
	var firstname = $('#firstname').val();
	var lastname = $('#lastname').val();
	var address = $('#address').val();
	var city = $('#city').val();
	var state = $('#state').val();
	var country = $('#country').val();

	if(firstname == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your first name');
		$('#firstname').focus();
		return false;
	}

	if(lastname == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your last name');
		$('#lastname').focus();
		return false;
	}

	if(address == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your address');
		$('#address').focus();
		return false;
	}

	if(city == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your city');
		$('#city').focus();
		return false;
	}

	if(state == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your state');
		$('#state').focus();
		return false;
	}

	if(country == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your country');
		$('#country').focus();
		return false;
	}
	
	$('.insert-edit-members').submit();
});

$(document).on('click','#product-btn',function(){
	var owner_id = $('#owner_id').val();
	var category_type = $('#category_type').val();
	var product_name = $('#product_name').val();
	var price = $('#price').val();

	if(owner_id == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Choose Owner Name');
		$('#owner_id').focus();
		return false;
	}

	if(category_type == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Choose Product Type');
		$('#category_type').focus();
		return false;
	}

	if(product_name == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter Product Name');
		$('#product_name').focus();
		return false;
	}

	if(price == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter Product Price');
		$('#price').focus();
		return false;
	}
	$('#insert-update-form').submit();
});

$(document).on('change','#product_photos',function(){

});

$(document).on('change','#product_photos',function(){
	$('#update-image-form').submit();
});

$(document).on('change','#full_address',function(){
	var full_address = $('#full_address').val();
		
	$.ajax({
		type: 'POST',
		url: baseAdminurl+'/get-property-location',
		data: {"full_address":full_address},
		dataType:'json',
		success: function(json){
			$('#country').val(json.country);
			$('#state').val(json.state);
			$('#city').val(json.city);
			$('#zipcode').val(json.zipcode);
			$('#latitude').val(json.latitude);
			$('#longitude').val(json.longitude);
		}
	});
});

$(document).on('click','#property-address-btn',function(){
	var full_address = $('#full_address').val();
	var country = $('#country').val();
	var state = $('#state').val();
	var city = $('#city').val();
	var zipcode = $('#zipcode').val();
	var latitude = $('#latitude').val();
	var longitude = $('#longitude').val();

	if(full_address == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your location');
		$('#full_address').focus();
		return false;
	}

	if(country == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your country');
		$('#country').focus();
		return false;
	}

	if(state == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your state');
		$('#state').focus();
		return false;
	}

	if(city == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your city');
		$('#city').focus();
		return false;
	}

	if(zipcode == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your zipcode');
		$('#zipcode').focus();
		return false;
	}

	if(latitude == '' || longitude == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Address you have entered is not valid, So try once again');
		$('#zipcode').focus();
		return false;
	}

	$('#insert-update-address-form').submit();
});

$(document).on('click','#admin-login-btn',function(){
	var username = $('#username').val();
	var password = $('#password').val();
	if(username == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your username');
		$('#username').focus();
		return false;
	}
	if(password == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter your password');
		$('#password').focus();
		return false;
	}
	$('#admin-login-form').submit();
});

$(document).on('click','#add-category-btn',function(){
	var category_id = $('#category_id').val();
	var name = $('#name').val();

	if(name == ''){
		$('.member-error-failed').css('display','block');
		$('.pass-msg-err').text('Enter category name');
		$('#name').focus();
		return false;
	}
	$('.insert-category').submit();
});