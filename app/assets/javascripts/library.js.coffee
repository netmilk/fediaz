# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

setPanelSize = ->
  $('.static-background').height $(window).height()
  $('.static-background').width $(window).width()

  $('.panel-body').height $(window).height()
  $('.panel-body').width $(window).width()

$(window).resize setPanelSize
$(document).ready setPanelSize
$(document).on 'page:load', setPanelSize