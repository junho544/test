<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>




<script>
function accept(id){
	
	$.ajax({
	type:"post",
	url :"accept.now?friend_id="+id,
	
	success:accpt,
	error:error
		
	});	
}

function accpt(bbb){
	
	$("#returnCheck").html(bbb);
	
}
function error(){
	alert("수락에러");
}
</script>
<script>
  $(document).ready(function(){
       window.setInterval   ('callAjax()', 1000); //3초마다한번씩 함수를 실행한다..!! 
    });
    function callAjax(){
    	 $.ajax({
    	        type: "post",
    	        url : "inviteAlarm.now",
    	        success: test	// 페이지요청 성공시 실행 함수
    	        	//페이지요청 실패시 실행함수
      	});
    }
    function test(aaa){	// 요청성공한 페이지정보가 aaa 변수로 콜백된다. 
        $("#invitenumber").html(aaa);	
    }
</script>
<font color=red>${sessionScope.memId}</font>  <br />

<div id="invitenumber"><!-- 요청개수 작동하는곳 --><br /></div>

<c:forEach var="inviteList" items="${inviteList}">
${inviteList.nickname}님으로부터 요청 <button onclick="accept('${inviteList.id}')">수락하기</button><br /><br />

</c:forEach>
<div id="returnCheck">dd<!-- 친구추가 체크 --></div>