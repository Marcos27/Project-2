

$(document).ready(function() {
  $('.btn-like-liked').click(function(event) {
    var userId = $(this).attr('data-user');
    var musicId = $(this).attr('data-music');
    console.log(userId, musicId)
    $.ajax({
      url: '/like/'+userId+'/'+musicId,
      type: 'GET'
    })
    .done(function(response) {
      console.log("success: ", response);
      var currentLikeCount = $('#like-count-'+musicId).html()
      if (response.success){
        currentLikeCount++
        $('#like-count-'+musicId).html(currentLikeCount)
      }else{
        alert('could not like')
      }
    })
    .fail(function() {
      console.log("error");
    })
    .always(function() {
      console.log("complete");
    });
  });
});



