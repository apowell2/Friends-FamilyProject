// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


function dismissAlert(userId){
  $.ajax({url: "/users/"+userId+"/dismiss_alert"});
  $('.email-alert').hide()
}
