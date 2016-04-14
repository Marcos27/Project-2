
$(document).ready(function() {
  $('.heart').hide(0)
  $('.btn-like-liked').click(function() {
    $('.none').addClass('heart')
    $('.heart').fadeIn(250)
    $('.heart').fadeOut(2300)
    $('.btn-like-liked').click(function(){
      $('.none').removeClass('heart')
    })
  });
});



  // $('.btn-like-liked').click(function() {
  //   $('.none').addClass('heart')
  //   $('.heart').fadeOut(3000)
  //   setTimeout(function () {
  //     $('.none').removeClass('heart')
  //   }, 3000)
  // });









