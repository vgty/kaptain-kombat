// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require bootstrap
//= require_tree .


$(document).ready(function() {
  $(window).on('load',function(){
       $('#myModal').modal('show');
       setTimeout(function(){ ($("#intro-fight").get(0).play()) }, 500);
       setTimeout(function(){ ($("#intro-fight2").get(0).play()) }, 3500);
   });
   $(window).on('click',function(){
        $('.close').modal('hide');
        setTimeout(function(){ ($("#my_intro").get(0).play()) }, 500);
        setTimeout(function(){ ($("#my_intro2").get(0).play()) }, 3500);
    });
    $(window).on('click',function(){
         $('.close').modal('hide');
         setTimeout(function(){ ($("#my_intro").get(0).play()) }, 500);
         setTimeout(function(){ ($("#my_intro2").get(0).play()) }, 3500);
     });
   
  $(document).keydown(function(key) {
    if ($("#bars1").show().length != 1) {
      $('#result').text("Player 2 Wins");
      $('#ask-fight').removeClass("d-none")
    }
    else if($("#bars2").show().length != 1) {
      $('#result').text("Player 1 Wins");
      $('#ask-fight').removeClass("d-none")
    }
    else{
      switch(parseInt(key.which,10)) {
        // A key Pressed
        case 81:
          $("#punch").get(0).play();
          $('.player1').animate({left: "500px"}, 150);
          $('.player1').animate({left: "0"}, 150);
          $('#bars2').remove();
        break;
        case 87:
          $('.player1').animate({left: "-500px"}, 500);
          $("#special").get(0).play();
          setTimeout(function(){ ($("#punch").get(0).play()) }, 400);
          $('.player1').animate({left: "700px"}, 100);
          $('.player1').animate({left: "0"}, 150);
          $('#bars2').remove();
        break;
      }
      switch(parseInt(key.which,10)) {
        // Right Arrow Pressed
        case 80:
          $("#punch1").get(0).play();
          $('.player2').animate({left: "-500px"}, 150);
          $('.player2').animate({left: "0"}, 150);
          $('#bars1').remove();
        break;
        case 76:
          $('.player2').animate({left: "500px"}, 500);
          $("#special").get(0).play();
          setTimeout(function(){ ($("#punch").get(0).play()) }, 400);
          $('.player2').animate({left: "-700px"}, 100);
          $('.player2').animate({left: "0"}, 150);
          $('#bars1').remove();
        break;
      }
    }
    
  });
});

function collision($player1, $player2) {
      var x1 = $player1.offset().left;
      var y1 = $player1.offset().top;
      var h1 = $player1.outerHeight(true);
      var w1 = $player1.outerWidth(true);
      var b1 = y1 + h1;
      var r1 = x1 + w1;
      var x2 = $player2.offset().left;
      var y2 = $player2.offset().top;
      var h2 = $player2.outerHeight(true);
      var w2 = $player2.outerWidth(true);
      var b2 = y2 + h2;
      var r2 = x2 + w2;

      if (b1 < y2 || y1 > b2 || r1 < x2 || x1 > r2) return false;
      return true;
}

    window.setInterval(function() {
      if (collision($('.player1'), $('.player2'))) {
        var fight_words = ['BAM!', 'FINISH HIM!', 'SLAAHH!!', ' ZBRRAH!', 'PAM !!', 'FATALITY!'];
        $('#result').text(fight_words[Math.floor(Math.random()*fight_words.length)]);
        
      }
    },130);
//     window.setInterval(function() {
//     $('#result').text(collision($('.player1'), $('.player2')));
// }, 200);

