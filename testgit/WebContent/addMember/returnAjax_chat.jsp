<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Insert title here</title>


<script src="/testgit/js/jquery-1.10.2.min.js"></script>
<script src="/testgit/js/socket.io.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript">
var socket ;
	$(document).ready(function() {
		$("#chat").focus();
		var socket = io.connect("http://localhost:12345");
		
		socket.on('response', function(msg){
			
		
			console.log("receive message :: " + msg.msg);
			
			
			$('#msgs').append(
			msg.msg+":"+'${sessionScope.memId}'+'<BR><BR>'+
			'<div class="clear"></div>');
			
			$("#chat").focus();
		});

		

		$("#send").bind("click", function() {
			if($('#chat').val() == ""){
				return;
			}
			var msg = $("input[name=chat]").val();
			
			socket.emit('msg', {msg:msg});
			$(':text:not([id=sdrrate])').val('');
			
			 $("#talkfield").scrollTop($("#talkfield")[0].scrollHeight);
			/* alert(msg); */
		}); 
		
		
		$('#chat').keydown(function() {
			if(event.keyCode==13){	
				if($('#chat').val() == ""){ 
		    		//chat의 값이 ""이면 return. 아무것도 되지 않음
					return;
		   		}
				var msg = $('#chat').val();
				socket.emit('msg', {msg:msg});
		
		$(':text:not([id=sdrrate])').val('');
		
		 $("#talkfield").scrollTop($("#talkfield")[0].scrollHeight); 
		
			
			}
			
		});
	});
	

</script>



</head>

<body>

	
			
	 <table class="scrolltbody">
	   <tbody>
	 	  <tr><td>
	 <div id="msgs">대화방에 입장하셨습니다 <br /> <br /></div>	
    	</td></tr>
 	 </tbody>
  </table>



	
	<input type="text" name="chat" id="chat" size="35" onkeyup="JavaScript:chat_enter1();" /> 
	<input type="button" value="전송" id="send" />

	

</body>

</html>

<style>
.scrolltbody {
    display: block;
    width: 320px;
    height:550px; 
   
    
}


.scrolltbody tbody {
    display: block;
    height: 550px;
    overflow: auto;
}
.scrolltbody #msgs
{

text-align:right;
float:right;
width:300px;

}
</style>
 





