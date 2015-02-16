var EL = {
	postEarthquake: function(context){
		//Find data attributes from element
		var title = $(context).attr("data-title");
		var time = $(context).attr("data-time");
		var eqid = $(context).attr("data-eqid");
		var latitude = $(context).attr("data-latitude");
		var longitude = $(context).attr("data-longitude");
		var magnitude = $(context).attr("data-magnitude");
		var place = $(context).attr("data-place");




		//AJAX Post request
		$.ajax({
			type: "POST",
			url: "/earthquakes",
			data: { title: title, time: time, eqid: eqid, latitude: latitude, longitude: longitude, magnitude: magnitude, place: place   },
		})
		//Success
		.done(function(res) {
			console.log(res);
		});
	}
};