var map;
var options = {
    zoom: 6,
    scrollwheel: false,
    center: new google.maps.LatLng( markers[3].latitude, markers[3].longitude),
    mapTypeId: google.maps.MapTypeId.ROADMAP
}

var mapa = {
    init: function() {
        map = new google.maps.Map(document.getElementById("map"), options);
    }
}


