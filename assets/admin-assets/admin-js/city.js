$('#name').change(function() {

    var city_name = $('#name').val();
    $.ajax({
        type: 'POST',
        url: baseAdminurl + '/get-location',
        data: {
            "city_name": city_name
        },
        dataType: 'json',
        success: function(json) {
			
			if(json.invalid_city=='failed'){
				$('.member-error-failed').css('display','block');
				$('.pass-msg-err').text('Invalid City');
				$('#name').focus();
				$('#country').val('');
				$('#state').val('');
				$('#latitude').val('');
				$('#longitude').val('');
				$('#name').val('');
				return false;	 
			}else{
				$('.member-error-failed').css('display','none');
				
				$('#country').val(json.country);
				$('#state').val(json.state);
				$('#latitude').val(json.lat);
				$('#longitude').val(json.lang);
				var country = $('#country').val();
				var state = $('#state').val();
				var city = $('#name').val();;
				address = city + ',' + state + ',' + country;
				var map = new GMap2(document.getElementById("map"));
				map.addControl(new GSmallMapControl());
				map.addControl(new GMapTypeControl());
				if (geocoder) {
					geocoder.getLatLng(
						address,
						function(point) {
							if (!point) {
								alert("Address " + address + " not found");
								return false;
							} else {
								$("#latitude").val(point.lat().toFixed(5));
								$("#longitude").val(point.lng().toFixed(5));
								map.clearOverlays()
								map.setCenter(point, 14);
								var marker = new GMarker(point, {
									draggable: true
								});
								map.addOverlay(marker);

								GEvent.addListener(marker, "dragend", function() {
									var pt = marker.getPoint();
									map.panTo(pt);
									$("#latitude").val(pt.lat().toFixed(5));
									$("#longitude").val(pt.lng().toFixed(5));
								});
							}
						});
				}
			}
        }
    });
});

function load() {
	
    oldlat = latitude;
    oldlng = longitude;
	
    if (oldlat == '') oldlat = '37.77264';
    if (oldlng == '') oldlng = '-122.40992';
    if (GBrowserIsCompatible()) {
        var map = new GMap2(document.getElementById("map"));
        map.addControl(new GSmallMapControl());
        map.addControl(new GMapTypeControl());
        var center = new GLatLng(oldlat, oldlng);
        map.setCenter(center, 15);
        geocoder = new GClientGeocoder();
        var marker = new GMarker(center, {
            draggable: true
        });
        map.addOverlay(marker);
        $("#latitude").val(center.lat().toFixed(5));
        $("#longitude").val(center.lng().toFixed(5));

        GEvent.addListener(marker, "dragend", function() {
            var point = marker.getPoint();
            map.panTo(point);
            $("#latitude").val(point.lat().toFixed(5));
            $("#longitude").val(point.lng().toFixed(5));

        });

    }
}
load();