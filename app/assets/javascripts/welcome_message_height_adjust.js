$(function(){
    var c = $("#myCarousel").outerHeight();
    $("#welcomeMessage").height(c);
});

$(window).on('resize', function(){
    var c = $("#myCarousel").outerHeight();
    $("#welcomeMessage").height(c);
});

