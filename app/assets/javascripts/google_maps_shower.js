handler = Gmaps.build('Google');
handler.buildMap({ provider: {disableDefaultUI: true, 
  scaleControl: true,
  zoom: 16,
  draggable: true,
  keyboardShortcuts: false,
  minZoom: 10,
  maxZoom: 18,
  zoomControl: true
  }, internal: {id: 'map'}}, function (){
    marker = handler.addMarker([
    {
    "lat": <%=@camp.latitude%>,
    "lng": <%=@camp.longitude%>
    }
  ]);
  handler.map.centerOn(marker);
});