getMyFavorites = ->
  $.getJSON "https%3A%2F%2Fapi.twitter.com%2F1.1%2Ffavorites%2Flist.json&count%3D10%26oauth_consumer_key%3Doagksir56Xdwt9MfeEVtQ%26oauth_nonce%3D3fd0ae1101105e96dde3643943403194%26oauth_signature_method%3DHMAC-SHA1%26oauth_timestamp%3D1385998800%26oauth_token%3D14350134-OJHC0RcFbxT2yLisB96ipDRkCK5uy7FiCvQNjCyK0%26oauth_version%3D1.0 ", (data) ->
    console.log data

$(document).ready ->
  getMyFavorites()
