$('document').ready(function() {
    $('a.request').on('click', function() {
      var body = $(this).next("span").html();
      $('#requestModal .modal-body').html(body);
      $('#requestModal').modal('show');
      return false;
    });
});
