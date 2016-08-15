<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
function addmember(id,nick,email,img){

	
    $.ajax({
        type: "post",
        url : "addmember_ajax_wait.now?id="+'${sessionScope.memId}'+"&friend_nickname="+nick+
        										   "&friend_email="+email+"&friend_image="+img+"&friend_id="+id,
        success: popupadd,	// 페이지요청 성공시 실행 함수
        error: whenError	//페이지요청 실패시 실행함수
	});
}
function popupadd(){
	alert("추가완료");
}
function whenError(){
  alert("친구추가ajax에러");
}
</script>


${add_search}<br />


 ${userinfor.id}<br />
 ${userinfor.nickname} <br />	
 ${userinfor.email}
 <input type="button" value="친구추가하기" onclick="addmember('${userinfor.id}','${userinfor.nickname}','${userinfor.email}','${userinfor.image}')">