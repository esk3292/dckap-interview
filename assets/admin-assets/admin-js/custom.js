$(document).ready(function() {
	$('#admin_table').DataTable();
});

$(document).ready(function(){
	$('#check-all').click(function() {
		if($('#check-all').prop('checked') == true)
	    	checkState = 'all';
	    else
	    	checkState = 'none';
	    countChecked();
	});

	$('.checkboxId').click(function(){
		var check_count = $('.checkboxId').length;
		var selected_count = $("input[name='checkbox_id[]']:checked").length;
		if(check_count != selected_count){
			$("#check-all").prop('checked',false);
		}
		else{
			$("#check-all").prop('checked',true);	
		}
	});
});

function countChecked() {
    if (checkState === 'all') {
        $("input[name='checkbox_id[]']").prop('checked',true);
    }
    if (checkState === 'none') {
        $("input[name='checkbox_id[]']").prop('checked',false);
    }
}

function commonCheckValidation(stat){
	var selected_count = $("input[name='checkbox_id[]']:checked").length;
	if(selected_count >= 1){
		swal({
			title: "",
			type: "warning",
			text:'Are you sure you want to change the status of this record !',
			showCancelButton: true,
			confirmButtonText: "OK!",
        }, function(isConfirm){
            if (isConfirm){
            	$('#common-status').val(stat);
            	$('#common-submit').submit();
           	} 
        });
	}
	else{
		$('.common-pass-error').text('Please Select Checkbox');
		$('.common-admin-error-message').css('display','block');
		setTimeout(function(){
			$('.common-admin-error-message').css('display','none');
		}, 2500);
	}
}