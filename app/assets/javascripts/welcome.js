$( document ).on( 'click', '.js-complete-task', function(e) {
  var habit_id = e.target.id;

  $.ajax({
          type: 'POST',
          url: '/complete_daily_habit',
          data: { completed_habit_id : habit_id },
          dataType: 'html',
          success: function(xhr, textStatus) {
            $(".js-habit-" + habit_id).fadeOut("slow");
          },
          error: function(xhr, textStatus, errorThrown) {
            alert('Could not complete this task, Please contact an admin.');
          }
  });
});
