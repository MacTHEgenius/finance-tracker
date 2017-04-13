var initFriendLookUp;

initFriendLookUp = function() {
  $('#friend-lookup-form').on('ajax:before', function(event, data, status) {
      showSpinner();
      console.log('spin');
  });
  
  $('#friend-lookup-form').on('ajax:after', function(event, data, status) {
      hideSpinner();
      console.log('stop spin');
  });
  
  $('#friend-lookup-form').on('ajax:success', function(event, data, status) {
    $('#friend-lookup').replaceWith(data);
    initFriendLookUp();
  });
  
  $('#friend-lookup-form').on('ajax:error', function (event, xhr, status, error) {
    hideSpinner();
    $('#friend-lookup-results').replaceWith(' ');
    $('#friend-lookup-errors').replaceWith('Friend was not found.');
  });
}

$(document).ready(function() {
  
  initFriendLookUp();
  
})