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
 <input type="button" id="users"class='imgSelect' value="즐겨찾기한 회원보기">
<!-- --------즐겨찾기회원보기---------- -->
<div id="divLangSelect">
이름
<div style="position:absolute;top:5px;right:5px">
<span onClick="javascript:document.getElementById('divLangSelect').style.display='none'" style="cursor:pointer;font-size:1.5em" title="닫기">X</span>
</div>
</div>





<%-- 	<c:forEach var="userlist" items="${userlist}">
   ${userlist.nickname}<br />
    </c:forEach> --%>
