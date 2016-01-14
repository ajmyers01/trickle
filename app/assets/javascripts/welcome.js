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

$(function() {

    $('#login-form-link').click(function(e) {
    $("#login-form").delay(100).fadeIn(100);
    $("#register-form").fadeOut(100);
    $('#register-form-link').removeClass('active');
    $(this).addClass('active');
    e.preventDefault();
  });

  $('#register-form-link').click(function(e) {
    $("#register-form").delay(100).fadeIn(100);
    $("#login-form").fadeOut(100);
    $('#login-form-link').removeClass('active');
    $(this).addClass('active');
    e.preventDefault();
  });

  $('#add-client-btn').click(function(e) {
    $("#habit-form").removeClass('hidden');
  });

  $('#create-habit-btn').click(function(e) {
    $("#habit-form").addClass('hidden');
  });
});

