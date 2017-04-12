var initStockLookUp;

initStockLookUp = function() {
  $('#stock-lookup-form').on('ajax:before', function(event, data, status) {
      showSpinner();
      console.log('spin');
  });
  
  $('#stock-lookup-form').on('ajax:after', function(event, data, status) {
      hideSpinner();
      console.log('stop spin');
  });
  
  $('#stock-lookup-form').on('ajax:success', function(event, data, status) {
    $('#stock-lookup').replaceWith(data);
    initStockLookUp();
  });
  
  $('#stock-lookup-form').on('ajax:error', function (event, xhr, status, error) {
    hideSpinner();
    $('#stock-lookup-result').replaceWith(' ');
    $('#stock-lookup-errors').replaceWith('Stock was not found.');
  });
}

$(document).ready(function() {
  
  initStockLookUp();
  
})