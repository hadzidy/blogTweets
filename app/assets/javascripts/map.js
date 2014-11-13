var map;
var options = {
    zoom: 6,
    scrollwheel: false,
    center: new google.maps.LatLng(44.244273, 7.769737),
    mapTypeId: google.maps.MapTypeId.ROADMAP
}

var mapa = {
    init: function() {
        map = new google.maps.Map(document.getElementById("map"), options);
    }
}


