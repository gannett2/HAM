# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Loads a script called masonry that animates the pictures and makes them slide into place every time the page is readjusted
# Selects any element with the "box" class
$ ->
  $('#pictures').imagesLoaded ->
    $('#pictures').masonry
      itemSelector: '.box'
      isFitWidth: true