<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="./css/comunity/comunityPage.css" type="text/css" charset="utf-8">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

<style>
#divLangSelect {
 position:absolute;
 display:none;
 background-color:#ffffff;
 border:solid 2px #d0d0d0;
 width:250px;
 height:150px;
 padding:10px;
 cursor: pointer;
 
}
.imgSelect{
cursor: pointer;
}
</style>








  
<font color=red>${sessionScope.memId}</font>
<c:forEach var="userlist" items="${userlist}">
   <div class='imgSelect' onclick="member('${userlist.id}')">${userlist.nickname}</div><br />
</c:forEach>

 





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
	 this.popid=id;
	    $.ajax({
	        type: "post",
	        url : "addmember_ajax.now?id="+popid,
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
<div id="return">요기~</div>
<div style="position:absolute;top:5px;right:5px">
<span onClick="javascript:document.getElementById('divLangSelect').style.display='none'" style="cursor:pointer;font-size:1.5em" title="닫기">X</span>
ddd
</div>
</div>

 
 
 
 <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
 <script>
	$(function() {	//팝업드래그
		$("#divLangSelect").draggable();	});
 </script>
 
 
 
<br />
<a href="invite.now">초대연습</a> <br />
<a class="imgSelect" onclick="openCreate(this.form)">친구리스트</a>



<script language="JavaScript">
    function openCreate() {
url = "/testgit/friendlist.now";
        
        
        window.open(url, "create", 'left='+(screen.availWidth-625)/2+',top='+(screen.availHeight-500)/2+', width=625px,height=650px');
    }
</script>













