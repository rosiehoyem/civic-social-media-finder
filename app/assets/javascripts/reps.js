function getLocation(){
  if (navigator.geolocation){
    navigator.geolocation.getCurrentPosition(insertPosition);
  }else{
    x.innerHTML="Geolocation is not supported by this browser.";
  }
}
function insertPosition(position){
  $("#latitude").val(position.coords.latitude)
  $("#longitude").val(position.coords.longitude)
}

$(function(){
  getLocation();
});