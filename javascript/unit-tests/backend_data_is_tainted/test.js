(function () {
  $.ajax({
    url: '/call/to/backend',
    type: 'GET',
    processData: true,
    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
  }).then(function (data) {
    $(data);
  }, function (data) {});
})();
