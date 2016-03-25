$ ->
	$('#more0').on "click", ->
	  if $('button span').hasClass('glyphicon-minus')
	  	$('#more0').html '<span class="glyphicon glyphicon-plus"></span> More Info'
	  else
	    $('#more0').html '<span class="glyphicon glyphicon-minus"></span> Less Info'
	  return