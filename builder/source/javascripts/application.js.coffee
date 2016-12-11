document.addEventListener 'DOMContentLoaded', ->

  secrets = [{
    lat: '{"iv":"HzNBHeWvQKqn8kIDIOfruQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"yogQW7H0R09BoSHfU1RnFkhK"}',
    lng: '{"iv":"p7TsqJJA9HdvC3FG39l8jw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"4y7lQoSr9mUJ2hw0VmGj1kg="}',
    info: '{"iv":"HqCjOhGHAXsXbVlftZQDVg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"fSs0b1L0UU8vcqVlhvNB+4nlLWx8m0jfwF4LptasRbBFfdB/W1rgTy4r5PT0segGdpp8zY4zsK7KaUfy6lFGjkvcqHAI2KtB0c/mCw1ZoLYdQnFDCfIzpi79o/oBbtKh/5351jwTLPO/9OQGAorM6JSLQwNZvhuWLEKlb8+kuJjh6JhziCXtL95F0Agk2JsJ8CBPhwpZpn65ik30UoA6AOyJZSLeVup965YRC3qLunaxD1AwPjt4wIs="}'
  }]

  newMap = (selector, secrets) ->
    map = null

    draw = ->
      map = new google.maps.Map(
        document.getElementById(selector),
        options()
      )

      return if hidePlaces()
      for secret in secrets
        marker = addMarker(secret)
        infoWindow = addInfoWindow(secret)
        marker.addListener('click', ->
          infoWindow.open(map, marker)
        )


    options = ->
      {
        center: new google.maps.LatLng(48.370906, 10.89941),
        zoom: 14,
        styles: [{
          "featureType": "all",
          "elementType": "labels.text.fill",
          "stylers": [{"saturation": 36}, {"color": "#000000"}, {"lightness": 40}]
        }, {
          "featureType": "all",
          "elementType": "labels.text.stroke",
          "stylers": [{"visibility": "on"}, {"color": "#000000"}, {"lightness": 16}]
        }, {"featureType": "all", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]}, {
          "featureType": "administrative",
          "elementType": "geometry.fill",
          "stylers": [{"color": "#000000"}, {"lightness": 20}]
        }, {
          "featureType": "administrative",
          "elementType": "geometry.stroke",
          "stylers": [{"color": "#000000"}, {"lightness": 17}, {"weight": 1.2}]
        }, {"featureType": "landscape", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 20}]},
          {"featureType": "poi", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 21}]}, {
            "featureType": "road.highway",
            "elementType": "geometry.fill",
            "stylers": [{"color": "#000000"}, {"lightness": 17}]
          }, {
            "featureType": "road.highway",
            "elementType": "geometry.stroke",
            "stylers": [{"color": "#000000"}, {"lightness": 29}, {"weight": 0.2}]
          },
          {"featureType": "road.arterial", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 18}]},
          {"featureType": "road.local", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 16}]},
          {"featureType": "transit", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 19}]},
          {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 17}]}]
      }

    tagetSymbol = ->
      {
        path: google.maps.SymbolPath.CIRCLE,
        fillColor: 'red',
        fillOpacity: 0.8,
        scale: 1,
        strokeColor: 'white',
        strokeWeight: 8
      }


    addMarker = (secret) ->
      new google.maps.Marker({
        map: map,
        icon: tagetSymbol(),
        position: {
          lat: decrypt(
            secret['lat']
          ) * 1,
          lng: decrypt(
            secret['lng']
          ) * 1
        }
      })

    addInfoWindow = (secret) ->
      new google.maps.InfoWindow({
        content: decrypt(
          secret['info']
        )
      })

    hidePlaces = ->
      getParams()['token'] == undefined || getParams()['token'] == null

    decrypt = (hash) ->
      sjcl.decrypt(
        getParams()['token'],
        hash
      )

    encrypt = (password, hash) ->
      sjcl.encrypt(
        password,
        hash
      )

    getParams = ->
      query = window.location.search.substring(1)
      raw_vars = query.split("&")
      params = {}
      for v in raw_vars
        [key, val] = v.split("=")
        params[key] = decodeURIComponent(val)
      params

    {
      draw: draw,
      encrypt: encrypt
    }

  window.map = newMap('google-map', secrets)
  map.draw()
