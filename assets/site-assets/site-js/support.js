$(document).on('click','#home-search-btn',function(){
	var search_param = $('#search_param').val();
	var search_address = $('#search-address').val();
	if(search_param == '' && search_address == ''){
		swal('Oops','Select City Or Enter City to search the properties','error');
		return false;
	}
	$('#search-form').submit();
});

$(document).on('click','#search-page-btn',function(){
	var search_param = $('#search_param').val();
	var search_address = $('#search-address').val();
	if(search_param == '' && search_address == ''){
		swal('Oops','Select City Or Enter City to search the properties','error');
		return false;
	}
	$('#search-page-form').submit();
});

$(document).on('click','#signup_here',function(){
	
	
	var first_name = $('#first_name').val();
	var last_name = $('#last_name').val();
	var email  = $('#register_email').val();
	var address = $('#address').val();
	var city = $('#city').val();
	var state = $('#state').val();
	var country = $('#country').val();
	var password  = $('#user_password').val();
	var con_password  = $('#con_password').val();
	var email_validate = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	
	var letters = /^[a-zA-Z0-9]+$/;
	var result = letters.test(password);

	if($.trim(first_name)==''){
		sweetAlert("Oops", "Enter First Name", "error");
	}else if($.trim(last_name)==''){
		sweetAlert("Oops", "Enter Last Name", "error");
	}else if($.trim(email)==''){
		sweetAlert("Oops", "Enter Email Id", "error");
	}else if (!email_validate.test(email)) {
		sweetAlert("Oops", "Enter valid Email Id", "error");
	}else if($.trim(address)==''){
		sweetAlert("Oops", "Enter Address", "error");
	}else if($.trim(city)==''){
		sweetAlert("Oops", "Enter City", "error");
	}else if($.trim(state)==''){
		sweetAlert("Oops", "Enter State", "error");
	}else if($.trim(country)==''){
		sweetAlert("Oops", "Enter Country", "error");
	}else if(password==''){
		sweetAlert("Oops", "Enter Password", "error");
	}else if(password.length < 6){
		sweetAlert("Oops", "Password must be minimum of 6 characters", "error");
	}else if(result){
		sweetAlert("Oops", "Password Must contain 1 alpha, 1 numeric and 1 special symbols", "error");
	}else if(con_password==''){
		sweetAlert("Oops", "Enter Connfirm Password", "error");
	}else if(password!=con_password){
		sweetAlert("Oops", "Passwords not matching", "error");
	}else{
		
		$.ajax({
			type:'POST',
			url:Baseurl+'signup-user',
			data:{
			'first_name':first_name,
			'last_name':last_name,
			'email':email,
			'address':address,
            'city':city,
            'state':state,
            'country':country,
			'password':password
			},
			success:function(response){
			
				if(response=='exit'){
				sweetAlert("Oops", "Email id is already exits", "error");
				}else{
					window.location.href=Baseurl;
				}
			}
		});
	
	}
});

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
	if(charCode == 46)return false;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}