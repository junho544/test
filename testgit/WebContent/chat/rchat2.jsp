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

<script>

	$(document).ready(function() {

		var socket = io.connect("http://49.169.109.45:12345");

		

		socket.on('response', function(msg){

			console.log("receive message :: " + msg.msg);

		});

		

		$("#sendBtn").bind("click", function() {

			var msg = $("input[name=chat]").val();

			socket.emit('msg', {msg:msg});

		});

		

	});

</script>	

</head>

<body>

	<h1>Main2</h1>

	<input type="text" name="chat" />

	<input type="button" value="send" id="sendBtn" />

</body>

</html>