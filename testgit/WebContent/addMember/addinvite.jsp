<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>




<script>
function accept(id){
	alert(id);
	$.ajax({
	type:"post",
	url :"accept.now?friend_id="+id,
	
	success:accpt,
	error:error
		
	});	
}

function accpt(){
	alert("수락하였습니다.");
}
function error(){
	alert("수락에러");
}
</script>









<font color=red>${sessionScope.memId}</font>  <br />

요청 개수 = ${inviteNumber} <br />

<c:forEach var="inviteList" items="${inviteList}">
${inviteList.nickname}님으로부터 요청 <button onclick="accept('${inviteList.id}')">수락하기</button><br /><br />

</c:forEach>