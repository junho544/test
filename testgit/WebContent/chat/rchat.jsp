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

	$(document).ready(function() {

		var socket = io.connect("http://localhost:12345");
		
		socket.on('response', function(msg){
			
		
			console.log("receive message :: " + msg.msg);
			
			$('#msgs').append("<span class=from-me style='float:left;'>"
			+msg.msg+'</span><BR><BR>'+'<div class="clear"></div>');
			
			alert(msg.msg);
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

	});

</script>

</head>

<body>

	<h1>Main11</h1>
	<span id="msgs"></span> <br />
	<input type="text" name="chat" id="chat"/>

	<input type="button" value="전송" id="send" />

</body>

</html>