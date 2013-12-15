var Map = {
    _init: function() {
        this.map = new L.Map('map_leaflet');
        this.overlays = [];
        var hull = new L.LatLng(latitude, longitude);
        var osmUrl='http://{s}.tile.cloudmade.com/d4fc77ea4a63471cab2423e66626cbb6/997/256/{z}/{x}/{y}.png';
        var osmAttrib='Map data © openstreetmap contributors';
        var osm = new L.TileLayer(osmUrl,{minZoom:6,maxZoom:18,attribution:osmAttrib});
        this.polyline = L.polyline([], {color: 'black'}).addTo(this.map);
        this.map.setView(hull,14);
        this.map.addLayer(osm);
    },
    Add: function(index, lat, lun, size, color) {
        color = color ? 'blue' : color;
        this.polyline.addLatLng([lat, lun])
        var circle = L.circle([lat, lun], 40, {
            color: "blue",
            fillColor: '#f03',
            fillOpacity: 0.3
        }).addTo(this.map);
        circle.bindPopup("Ambulance is here");
        this.overlays[index] = circle;
    }
}

$(function(){
    Map._init();
    $('.slider').slider().on('slide', function(evt) {
        var index = evt.value;
            if (this.currentIndex != index) {
            var value = data[index];
	           if (value && value != "0") {
	                Map.Add(index, value[0], value[1], value[2]);
	           }
        }
        this.currentIndex = index;
    });
});
