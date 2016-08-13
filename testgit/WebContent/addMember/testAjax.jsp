<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
function addmember(nick,email){

	
    $.ajax({
        type: "post",
        url : "addmember_ajax_wait.now?nickname="+'${sessionScope.nickname}'+"&friend_nickname="+nick+
        										   "&friend_email="+email+"&email="+'${sessionScope.email}',
        success: popupadd,	// 페이지요청 성공시 실행 함수
        error: whenError	//페이지요청 실패시 실행함수
	});
}
function popupadd(ccc){	// 요청성공한 페이지정보가 aaa 변수로 콜백된다.		
	alert("추가성공");
}
function whenError(){
  alert("친구추가ajax에러");
}

</script>
 ${userinfor.nickname} <br />	
 ${userinfor.email}
 <input type="button" value="친구추가하기" onclick="addmember('${userinfor.nickname}','${userinfor.email}')">