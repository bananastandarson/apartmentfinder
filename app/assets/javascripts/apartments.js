function make_google_map(locations){
  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'index_map'}}, function(){
    markers = handler.addMarkers(
      locations
    );
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
}


$(document).ready(function(){


  $.ajax({
    dataType: 'json',
    url: "apartments/get_all",
    method: "get",
    success: function(data){
      make_google_map(data);
    },
    error: function(jqXHR, textStatus, errorThrown) {
      alert(errorThrown);
    }
  })


})
