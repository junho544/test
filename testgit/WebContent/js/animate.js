$(function(){
  $(".submenu").hide();
  $(".nav>li>a").mouseover( function(){
     if($(this).next().css("display") == "none" ){     
     $(".submenu").slideUp("2000");
     $(this).next().slideDown("2000");
     }
  });
  $(".submenu").mouseleave(function(){
     $(".submenu").slideUp("2000");
  })
});









