var createLabelIcon = function(labelClass,labelText){
  return L.divIcon({ 
    className: labelClass,
    html: labelText
  })
};

var shiftCoord = function(lat,lon,dx,dy) {

var latLng = L.latLng([lat, lon]);

var point = map.latLngToContainerPoint(latLng);

var newPoint = L.point([point.x + dx, point.y + dy]);

var newLatLng = map.containerPointToLatLng(newPoint);

return newLatLng

};

var shiftCoord2 = function(latLng,dx,dy) {

var point = map.latLngToContainerPoint(latLng);

var newPoint = L.point([point.x + dx, point.y + dy]);

var newLatLng = map.containerPointToLatLng(newPoint);

return newLatLng

};


var zombify = function(latLng,label,dx,dy) {

var newLatLng = shiftCoord2(latLng,dx,dy);

L.circle(newLatLng, {
		color: 'black',
		//fillColor: '#f03',
		fillColor: 'white',
		fillOpacity: 0.5,
		radius: 15
	}).addTo(map);

 L.marker(latLng, {icon:createLabelIcon("textLabelclass",label)}).addTo(map);

};





