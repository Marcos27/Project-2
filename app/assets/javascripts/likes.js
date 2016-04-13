

$(document).ready(function() {

  $('.btn-like').click(function(event) {
    var userId = $(event.target).attr('data-user');
    var musicId = $(event.target).attr('data-music');
    console.log(userId, musicId)
    $.ajax({
      url: 'http://localhost:3000/like/'+userId+'/'+musicId,
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



