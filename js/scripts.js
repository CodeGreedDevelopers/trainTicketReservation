(function() {
    "use strict";

    // custom scrollbar

    $("html").niceScroll({styler:"fb",cursorcolor:"#C3B400", cursorwidth: '4', cursorborderradius: '10px', background: '#ccc', spacebarenabled:false, cursorborder: '0',  zindex: '1000'});

    $(".scrollbar1").niceScroll({styler:"fb",cursorcolor:"#C3B400", cursorwidth: '4', cursorborderradius: '0',autohidemode: 'false', background: '#ccc', spacebarenabled:false, cursorborder: '0'});

	
	
    $(".scrollbar1").getNiceScroll();
    if ($('body').hasClass('scrollbar1-collapsed')) {
        $(".scrollbar1").getNiceScroll().hide();
    }

})(jQuery);


// Get the modals
var modal = document.getElementById('myModal');
var modal_start=document.getElementById('myModal_start');
var start_close=document.getElementById('_close');
var strt=document.getElementById('strt');
var aler=document.getElementById('aler_bg');
var aler_close=document.getElementById('closebtn');



// Get the button that opens the modal
var btn = document.getElementById("pay_now");
var bd=document.getElementById('body');

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    var pay_d=parseInt(document.getElementById('total').innerHTML);
   
    if (pay_d==0) {
        aler.style.display="block";
    }else{
        modal.style.display = "block";
    }
}
aler_close.onclick=function () {
    aler.style.display="none";
}

start_close.onclick=function() {
   modal_start.style.display = "none";
}

bd.onload=function() {
    this.modal_start.style.display="block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
    modal_start.style.display = "none";
}
strt.onclick=function() {
    this.load_data();
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

                     
     
  