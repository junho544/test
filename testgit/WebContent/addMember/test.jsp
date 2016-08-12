<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
#divLangSelect {
 position:absolute;
 display:none;
 background-color:#ffffff;
 border:solid 2px #d0d0d0;
 width:250px;
 height:150px;
 padding:10px;
}
</style>

  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  
<link rel="stylesheet" href="./css/comunity/comunityPage.css" type="text/css" charset="utf-8">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>





	<c:forEach var="userlist" items="${userlist}">
   <div class='imgSelect' onclick="member('${userlist.nickname}')">${userlist.nickname}</div><br />
    </c:forEach>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>



<script type="text/javascript">
//-- 버튼 클릭시 버튼을 클릭한 위치 근처에 레이어 생성 --//

$('.imgSelect').click(function(e) {
 var divTop = e.clientY - 20; //상단 좌표
 var divLeft = e.clientX - 40; //좌측 좌표
 $('#divLangSelect').css({
     "top": divTop
     ,"left": divLeft
     , "position": "absolute"
 }).show();
});



</script>



 <script>
 function member(id){
	alert(id);
	 this.popid=id;
	    $.ajax({
	        type: "post",
	        url : "popup.hou?id="+popid,
	        success: popup,	// 페이지요청 성공시 실행 함수
	        error: whenError	//페이지요청 실패시 실행함수
		});
	}
	function popup(ccc){	// 요청성공한 페이지정보가 aaa 변수로 콜백된다.		
		$("#return").html(ccc);
	}
	function whenError(){
	  alert("에러");
	}
</script>

 









<!-- --------즐겨찾기회원보기---------- -->
<div id="divLangSelect">

<div style="position:absolute;top:5px;right:5px">
<span onClick="javascript:document.getElementById('divLangSelect').style.display='none'" style="cursor:pointer;font-size:1.5em" title="닫기">X</span>
</div>
</div>

 
 
 
 
 
 
 


