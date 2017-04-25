function initMap() {
    var lcb2017 = { lat: 4.885470, lng: 114.931614 };
    var map = new google.maps.Map(document.getElementById('gcmap'), {
        zoom: 4,
        center: lcb2017
    });
    var marker = new google.maps.Marker({
        position: lcb2017,
        map: map
    });
}