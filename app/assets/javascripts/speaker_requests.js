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
     search = JSON.parse('{"' + decodeURI(search).replace(/"/g, '\\"').replace(/&/g, '","').replace(/=/g,'":"') + '"}')
   }

   console.log(window.location);
   $('select#state').on('change', function() {
     $("select#state option:selected").each(function(){
       var selected = $(this).text();
       var loca = window.location.href;
       if( "date" in search) {
          params = '&state='+selected;
       } else {
          params = '?state='+selected;
       }
       console.log(loca + '?state='+selected);
       window.location.href = loca + params;
     });
   });

});
