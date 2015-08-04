// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(function () {
  var $form = $('form')
  var $tweets = $('.tweets')

  var addTweetToPage = function (response) {

    $tweetClone = $('.tweet').first().clone()
    var src = (response.sms) ? "SMS" : "WEB";

    console.log(response)

    $tweetClone.find('.source').text(src);
    $tweetClone.find('.content').text(response.content);
    $tweetClone.find('.timestamp').text(response.created_at);

    $tweets.prepend($tweetClone);
  };;


  $form.on('submit', function self (event) {
    event.preventDefault();
    var $input = $form.find('input');
    var user_input = $input.val();
    $input.val('');
    var data = { tweet: { content: user_input }};
    $.ajax({
      url: '/api/tweets',
      method: 'post',
      data: data,
      success: addTweetToPage
    });

  })




})
