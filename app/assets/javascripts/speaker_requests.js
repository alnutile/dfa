$('document').ready(function() {

    $('a.request').on('click', function() {
      var body = $(this).next("span").html();
      $('#requestModal .modal-body').html(body);
      $('#requestModal').modal('show');
      return false;
    });
   
   var search = '';
   if(window.location.search.length) {
     search = window.location.search.substring(1);
     search = JSON.parse('{"' + decodeURI(search).replace(/"/g, '\\"').replace(/&/g, '","').replace(/=/g,'\":\"') + '"}');
   };

   //Set state on load
  var chosen_state = $("option:selected", this).val();
  $('#speaker_request_state_list').val(chosen_state);
         
   $('select#state').on('change', function() {
      var chosen_state = $("option:selected", this).val();
      $('#speaker_request_state_list').val(chosen_state);
   });

   $('select#state-select').on('change', function() {
     $("select#state-select option:selected").each(function(){
       var selected = $(this).text();
       var loca = window.location.origin;

       if( search.hasOwnProperty('date') ) {
          query = window.location.search;
          params = '&state='+selected;
          window.location.href = loca + '/calendar' + query + params;
       } else if( search.hasOwnProperty('state') ) {
          params = '?state='+selected;
          window.location.href = loca + '/calendar' + params;
       } else {
          params = '?state='+selected;
          window.location.href = loca + '/calendar' + params;
       }
     });
   });

});
