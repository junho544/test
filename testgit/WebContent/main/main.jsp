<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src=http://code.jquery.com/jquery-1.11.3.min.js></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>


<script>
$(document).ready(function() {
	var obj=new Object();

	
	
	$.ajax({
		type : "post",
		url : "boast_comment.now",
		data : JSON.stringify(obj),
		success :test,
	});
	function test(aaa){
		
		$("#form").html(aaa);
	}
	$("#getcomment").bind("click",function(){	// �ڸ�Ʈ �Է½�
		alert("������Ʈ");
		obj=new Object();
		obj.comment=document.getElementById("comment").value;
		alert(obj.comment);
		
		$.ajax({
			type : "post",
			url : "boast_comment.now",
			data : JSON.stringify(obj),
			success :test2,
			error : when
		});
		function test2(aaa){
		
			$("#form").html(aaa);
		}
		function when(){
			alert("����");
		}
	});	
	
	$('#change').bind('click', function(){
		var f = document.test;
		f.action="boast_change.now",
		f.method="post",
		f.submit();
	});
	$('#delete').bind('click', function(){
		var f = document.test;
		f.action="boast_delete.now",
		f.method="post",
		f.submit();
	});
	$('#getcomment').bind('click',function(){
		$('#comment').val(''); 
	});
});

</script>



<html>
<head>
    <!-- Bootstrap Core CSS -->
    <link href="/testgit/css/bootstrap.min.css" rel="stylesheet">
    <link href="/testgit/css/business-casual.css" rel="stylesheet">

  
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>



<form method="post" name="commentform" action="">

 <div class="container">


<center>
<img src="/testgit/image/main.png"/>
</center>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                <table>
                <tr>
                <td rowspan="5" width="200">
                <img src="/testgit/image/profile.jpg"/>
                </td>
                <td width="300">
                
                <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle btn-sm" type="button" data-toggle="dropdown">
    <span class="glyphicon glyphicon-cog"></span>
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    
    <li><a href="">�츮��</a></li>  
    <li><a href="">����ä��</a></li>
    <li><a href="modify.now">�����ʼ���</a></li>
    <li><a href="logout.now">�α׾ƿ�</a></li>
  </ul>
  </div>
  
  

                
                </td>
                
                
                
                <td rowspan="5">
                  <div class="form-group">
    <label for="exampleTextarea">${member.nickname}���� ���¸޼���</label>
    <textarea class="form-control" rows="5" id="comment" name="comment"
    cols="60" style="resize: none;" placeholder="���� ���� ������ �ϰ� ��Ű���?"></textarea>
  </div>
  <button style="margin-top:30px;" id="getcomment" type="botton" class="btn btn-primary btn-lg btn-block">������Ʈ</button>
              </td>
                
                </tr>
<tr>
<td>
&nbsp;
</td>
</tr>
<tr>
<td>
&nbsp;
</td>
</tr>
<tr>
<td>
&nbsp;
</td>
</tr>
                <tr>
                <td>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
                <p>${member.nickname}</p>
                ${member.email}
                </td>
                </tr>
                </table>



               

               
                
                </div>
                </div>
                </div>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                



               <div id="form"></div> 

               
                
                </div>
                </div>
                </div>
                </div>
                </form>
            
                
                


</body>
</html>