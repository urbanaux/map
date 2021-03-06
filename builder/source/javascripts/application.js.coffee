document.addEventListener 'DOMContentLoaded', ->

  secrets = [{
      lat: '{"iv":"n9KKp9vbFQ6t6XkTdqCXlw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"iK61KOkyJNPUD81W5sJUnsYe"}',
      lng: '{"iv":"nHs7JFS/YYigWthC8jUAfA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"HuTLMzNgOURuDRb2gA7dZag="}',
      info: '{"iv":"7xi+NnHRIWOs8UxeMY00qQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"WzUZbN6WbnzEi8jmqBl/3WZq6T68oHyY"}',
    },
    {
      lat: '{"iv":"wmyWT0juvqZfMVEj93uBEg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"H2SwaDSRByCFP0KaiWH+2KBX"}',
      lng: '{"iv":"5W0UXzccYmLoTy0yQJEY8A==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"DCi+mK5VgnR94gOXlP6qsDnZ"}',
      info: '{"iv":"Tc9xmxVElsnQCjBDoP93nA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"WvGvml6dkIhpKuJP7p6gPmVWmarhIB1XMW/07Wao"}',
    },
    {
      lat: '{"iv":"/MS+fQ+ilNEf+qC2RH9ByQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"5/MM8SviSynyHTo1mTC4Iouq"}',
      lng: '{"iv":"pSrwQyS3zAnm7OHUch1VSQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Lo5xuZAzXoIgMaiJ7xU57h7Q"}',
      info: '{"iv":"89dncDl+/h/yDcEasUOmDg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"8PkUoYtEzdZS+4wWD1rz+/guh+Wu9A=="}',
    },
    {
      lat: '{"iv":"8xNU/9QmROoJrQ1/HuLy9A==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"GG5Q1iApPDQK+cNgb7l8qU3N"}',
      lng: '{"iv":"uWL5Whh8ZbGPEjBpO9GGkw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"OzuKACbKs7scrtqj7WfB29H5"}',
      info: '{"iv":"R/QuIjo3/3LwptTJHoKbrQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Oo/GQ51GsewAYgTzQfxrWbeYLA=="}',
    },
    {
      lat: '{"iv":"gzD0RFNMKsj8vm3gW1p99A==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Bxk8YaftxcysM/b7Orr6dHrh"}',
      lng: '{"iv":"Eyl4P83sTlnl1we41qAw4g==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"zjNgl2pARCT3QLEM59aJRM1b"}',
      info: '{"iv":"gLuBZqyN8q0OVFiDjbIycA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"zCSur2tJD7ZyFC/Jd5oE3Vsiv2w="}',
    },
    {
      lat: '{"iv":"bRp6CP2HUbxzhwFGBJDpkw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"gVSN+jw90r5XqlW/fZ6ZTeDS"}',
      lng: '{"iv":"u1+MXAicGgha5gHOYu6m/w==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"EwsvDg8RZseUrXdOFi/VOcKV"}',
      info: '{"iv":"AVbK2b4GjHjv+17kRP0UMA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"UwvfvViDDFORhCrbTOyliZlkYI0kb6UFeNlnEyFfKeobWnZdSktdUAP1dYrQzD+H84KRBHHBPUb+lO4JlNWz+Ylc"}',
    },
    {
      lat: '{"iv":"yIFOnGb92Pfur0uARwF4/w==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"9OIVmxH+PXomC3zGwFlFyG5G"}',
      lng: '{"iv":"uKoTj93OxqxSkq+CVMPc0w==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"F4BJkkir9+yZi2Bpz35iO59P"}',
      info: '{"iv":"Ac05k4BMmmlSNvjvI0AYtQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"/jHJ1bistTxmRBYiZBFBtrf/48kL+4675zhl1hxAKTdRxdY3X0CblGXcFCJ5"}',
    },
    {
      lat: '{"iv":"D0KGhaEdYuPuy7hTftNrvg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"4OZY3Q/LxCuM2rXpDA6Mi4GR"}',
      lng: '{"iv":"/pnbRZgNBIYlIPcOtdAZlA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"zdXOEtt9VPQfO7XcgvT66zFP"}',
      info: '{"iv":"ftPqR+/uxU8Kw4vVlc98XA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"AEPGocXOchWn+oEvTxWFpRusd+OUbQs="}',
    },
    {
      lat: '{"iv":"f1tlRrH9Zu0nmtD+/AaSIA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"uV14ng/sAR057djkgt++bohz"}',
      lng: '{"iv":"aYJr1A/vZdDrvcNf96QgXw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Iaheo3yOelvgx1g2aBR8gO3F"}',
      info: '{"iv":"uDRMMzm8ERyAGWCCioQ9RQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"vsy18ZRszgm3JmsqaVK8mwqiLYmQ7kBJgw=="}',
    },
    {
      lat: '{"iv":"ygwXWfbi5Z5SxSADit0VlA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"/zM9i0OlB83BvLC+Ma8G8R0l"}',
      lng: '{"iv":"4Z0aIRqyoA4M6/pMRUV5VA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"niQjDQzkr/1HqloWf5cpf8uX"}',
      info: '{"iv":"WH5CeD46hT9iKVBjFX9DOg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Fy0WNPLEnZ/5pa0bBoemqVimZZpqINHV61XrRasEyLTXgYSNhkXEoA=="}',
    },
    {
      lat: '{"iv":"HFnyZ23i4UVECc8G/tBTRQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"I2XsvHA44sjBWO8X1NZgLu2n"}',
      lng: '{"iv":"U5ddIlf/GwojZvrgyQrkCA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"aCPscySmNU73rtt33ou/Ptdg"}',
      info: '{"iv":"bCYtCh4dRgcQnkKLUOn/kA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"ucW44++YAJL+bAOMotX0FguFlFVvAQ0Ubg=="}',
    },
    {
      lat: '{"iv":"kP0sQIcVBLku1G3Tf2EC7Q==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"VFPqM1wcjeyWIp5JhuaOmy4s"}',
      lng: '{"iv":"pdfvza3eRmYWL0gOVKTFoQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"k1Qpe6TvVa7Q+L4m0VkhAxzI"}',
      info: '{"iv":"LU6ek6vwwdtslgmtiMBCmQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"ru8XZMcw+c5vNvmcA3ghSb9k"}',
    },
    {
      lat: '{"iv":"aCIT9AaamENHggrHq0zXMg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"R36PeYV6Z3ZyvwbH1YqbsJKN"}',
      lng: '{"iv":"R+mGT8tU1hj1bex2ll9h4w==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"/Spt8z4MJ8JQZXrao0QLZdKx"}',
      info: '{"iv":"rzvE6LfgoeQw0u4bmcGLfg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"IO6wMBfDSq5U5NSq895rJuZf"}',
    },
    {
      lat: '{"iv":"a+9JCnlGNQ4/vQ+4Yje1Hw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"ufruYOGu6omDEk+y0O1gTcLd"}',
      lng: '{"iv":"qo8LnrnDlw+L+t6UBDAfaA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"IUPOo+zmOkIFnUw6T9QK4DUG"}',
      info: '{"iv":"mcrPegc25azyP1/oStIrYA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"EZt0/OUWzxmzEdpD3xbX8SVip+iH/2P0FQ=="}',
    },
    {
      lat: '{"iv":"ezjlkn7WlD912gm7lrp1fA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"B6hZedsvtgN77QT50EKeo60="}',
      lng: '{"iv":"4M7DlQqP3Q4jYQq8krezPA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"QFGpNYUBvYdEbUd3sWF1NVyl"}',
      info: '{"iv":"CUxi2lNv6g/gneai8kaMnQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"TSLg8Ab6EaT9rzMCOdMvYSuYxR7H5jylox9g/ro/iCyAogZdLJIKBEGP"}',
    },
    {
      lat: '{"iv":"pIuB0oZTpqqhiYlZpG9Tkw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"i/4QNFv43VJtkI655o/FCHQ="}',
      lng: '{"iv":"HYELUHZsYSGRwiBEh0dOxQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"rIJ0CKJUPVQhyj+qoeIToYt/"}',
      info: '{"iv":"p/IlnV2P+kgVW1OnyrKUAQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"AOvbLYYWzd4TiwhhQT9h+LLiG7dihOlgFK2M5SU="}',
    },
    {
      lat: '{"iv":"E+jrLPQBSX9aESYWNOW5Yg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"pwcUpN214Tv5dNCT8ZFTNT0="}',
      lng: '{"iv":"rQVl9dZjhUcXkxNdRBjmSQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"6VnP6X2v9V6q4hmSNCgWMH8="}',
      info: '{"iv":"i9/8VojbGG8KyR43c+iHnQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"qFiwBE6IVY5YjMBs+6TPKJ7Ysj0sIFQIXI5cG6Vcvo9S"}',
    },
    {
      lat: '{"iv":"s+KNtB4jN1ujcmOTN2ChpQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Q8v989WRTvEWjLotjPnyArCq"}',
      lng: '{"iv":"N1QL4CD+5YsN1uPdTXEhWg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Ldxug+s0IvrzpMK8+eZW6qUB"}',
      info: '{"iv":"4C2YXhwc7uvQgbwKgHhe/w==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"6bjNca19mG3sqyq03ElivvofxSLi8zTboZgNK0735LZd1ZIQJbTCnwA6sG4eg7mMmOo="}',
    },
    {
      lat: '{"iv":"Dr8Rak0+vpqL1kipf4pYWA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"gowbhryebeBV17VU+CX6Kys="}',
      lng: '{"iv":"JUPtZHfsesYyjW3r6N96aw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"6GY0gY6TXZ6qpCUHn4PXS6g="}',
      info: '{"iv":"lWzhqN46+tgloS9+h8ABaA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"OND80QsVI3Peay1ts5BQOuJ7Z3C7wReQXr898E9jye8="}',
    },
    {
      lat: '{"iv":"QxGi89t7O9n7mLyvJJLLKA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"5mOpWf8CSMF2DhirCdijUko="}',
      lng: '{"iv":"JsHu7rv/d/n/BeCsCjs8Hw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"iW3wTIcgXUGSaOvnQJErq2bH"}',
      info: '{"iv":"6uCkhtI0PP2fptJQEvNDNA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"UXTzeKNOvNxpsrEJENzdtoqmsREh8knMdDahXXSx4tM+klQ="}',
    },
    {
      lat: '{"iv":"caPcgwncQ6zjzLFR8vfc2g==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"tHovbBnh8ZeiduQ61ROmg5Q="}',
      lng: '{"iv":"0DX82jhxqcFEgmbAHHGsRg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"li3e+UigkIk5FtLhiBOrXBen"}',
      info: '{"iv":"MMIxDu6y27W6gbOYyMmkKg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"3rpZvHr7IluEtphS6t/JCXEovN15RUwufJ2BWw=="}',
    },
    {
      lat: '{"iv":"qrIYz/w+CGRDf4gQJ76szw==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"tdVMLeNg5b1SD0lE3lSWi1g="}',
      lng: '{"iv":"jPBIKG62GeYJRv8czQAmAA==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"i39ynbv1UIWTnrwO+600Y43C"}',
      info: '{"iv":"veBjjgJ5xS0hF1jHuz1tzg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"UF973X/mHtT0BJ+37H8htaKLcyiS3MsJ55DH7ZGKpg=="}',
    },
    {
      lat: '{"iv":"100tlPSjCvN9vVOLOGSMoQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"n/az5hY0GWuVvIDWUEukS033"}',
      lng: '{"iv":"qa0HiTwcOwCohsz3QUkILQ==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"Ka5HaEs60XHS5V/nIG2BC8E="}',
      info: '{"iv":"HIAINJu37TfaLWYiIoOQfg==","v":1,"iter":10000,"ks":128,"ts":64,"mode":"ccm","adata":"","cipher":"aes","salt":"iV/TG/6tGpk=","ct":"RWSTHmzq4Tr3N/rnBqgmi6FYKIpxzIyZnw=="}',
    }
  ]

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
        do (marker, infoWindow) ->
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
      try
        sjcl.decrypt(
          getParams()['token'],
          hash
        )
      catch error

    encrypt = (password, text) ->
      sjcl.encrypt(
        password,
        text
      )

    encryptList = (password, list) ->
      for text, _index in list
        sjcl.encrypt(
          password,
          text
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
      encrypt: encrypt,
      encryptList: encryptList
    }

  window.map = newMap('google-map', secrets)
  map.draw()
