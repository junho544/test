<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

    <link href="/testgit/css/bootstrap.min.css" rel="stylesheet">


      <link href="/testgit/css/business-casual.css" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css" href="/testgit/css/main/main.css">
<style>
#write2 {
 position:absolute;
 display:none;
 background-color:#ffffff;
 border:solid 2px #d0d0d0;
 width:450px;
 height:340px;
 padding:10px;
 cursor: pointer;
 }
/*  #close{

color:red;
width:450px;
height:50px;
position: relative;
left: 5px; 
top: -15px
 } */
 </style>

<script>
function clearText(thefield){
	if (thefield.defaultValue==thefield.value)
		thefield.value = ""
	} 
function retext(thefield){
		thefield.value = "친구검색하기/자동완성"
	} 	
$(document).keydown(function(event) {
	if (event.keyCode == 27) {
		document.getElementById('write2').style.display='none';
	}
	
	});
</script>


<script>
var count=0;
function chat(id,fid,num,test){
count++;
alert(fid);
	/* var obj	= document.getElementById("test");
	var obj2	= document.getElementById("return2");
	var obj3	= document.getElementById("apa");
	 ajax 하나 더 만들어서 오른쪽 전체를 새로고침시킴 
	obj.setAttribute("id", count); 
	obj2.setAttribute("id", count); 
	obj3.setAttribute("value", count);  */
	var my_num = '${userinfor.num}';
	var user_friend = my_num+num;
	var friend_user = num+my_num;


	
	$.ajax({

	type:"post",
	url :"chat.now?id="+id+"&count="+count+"&friend_id="+fid+"&user_friend="+user_friend+"&friend_user="+friend_user,
	
	success:accpt,
	error:error
		
	}); 
	
	
function accpt(bbb){
	
	$('#return2').html(bbb);
	
}
function error(){
	alert("대화방에러");
}
}
</script>

<script>
function member(id){
	 this.popid=id;
	    $.ajax({
	        type: "post",
	        url : "addmember_ajax_infor.now?id="+popid,
	        success: popup,	// 페이지요청 성공시 실행 함수
	        error: whenError	//페이지요청 실패시 실행함수
		});
	}
	function popup(ccc){	// 요청성공한 페이지정보가 aaa 변수로 콜백된다.		
		$("#returninfor").html(ccc);
	}
	function whenError(){
	  alert("에러");
	}
</script>






 
 
	<div id="kyung">
 	
 	<div id="return2">그림/배너<br />
  		
 	</div>
 	</div>
 	
 	
 	
 	
 	 <div id="pop" class="open" style="float:left">
    <div class="notice">접속중인 친구보기
        <div id="noticeright" style="text-align:right">
           
        </div>
    </div>
    <div class="contentsTop">
    
    	<table id="toptable" >
		   	<tr>
		   		<td width="75px"><span id="mem" >사진 /${sessionScope.memId}</span></td>
		   		
		   	</tr>
		   	<tr>
		   	<td><span id="memSearch"><input type="text" onFocus="clearText(this)" onblur="retext(this)" 
		   	value="친구검색하기/자동완성" size="30px" id="searchFriend"></span></td>
		   	</tr>
		
    	</table>
      

    

    <div class="contents">
   
   	<div id="contentsMember">
    	
    	<div style="float:left;">
    	<span id="imgg"><img src="/testgit/image/profile.jpg"/></span>
    	${userinfor.nickname} 　　　　　　　 ${userinfor.talk}</div> <br />
    	<table>
    	<br /><br />

 <c:forEach var="friend" items="${friendInfor}" varStatus="i"> 

    	<tr><td><div id="memList"><font color=green>●</font>
    	<span id="imgg"><img src="/testgit/image/profile.jpg"/></span> 
    	<il id="profileUser">
    	
    	 <div class="dropdown">
    <button id="btn"class="btn btn-info btn-sm" type="button" data-toggle="dropdown">
    <b>${friend.nickname}</b>
  <span class="caret"></span></button>
  <ul class="dropdown-menu">  
    <li><a class="write" onclick="member('${friend.id}')">쪽지보내기</a></li>  
    <li><a >프로필보기</a></li>
    
  
    <li ><a id="test"onclick="chat('${sessionScope.memId}','${friend.id}','${friend.num}');">대화시작</a></li>
											
  </ul>
  </div>
    	  <font size="1">${friend.talk} 
    	  </font></il></div></td></tr>
    	</c:forEach>
    	</table>
    	</div>
		 </div>
		 
	

	</div>
</div>  


<script type="text/javascript">
//-- 버튼 클릭시 버튼을 클릭한 위치 근처에 레이어 생성 --//

$('.write').click(function(e) {
 var divTop = e.clientY - 20; //상단 좌표
 var divLeft = e.clientX - 40; //좌측 좌표
 $('#write2').css({
     "top": divTop
     ,"left": divLeft
     , "position": "absolute"
 }).show();
});
</script>



<div id="write2">
<div id="returninfor"></div>
<div style="position:absolute;top:5px;right:5px">
<span onClick="javascript:document.getElementById('write2').style.display='none'" style="cursor:pointer;font-size:1.5em" title="닫기">X</span>

</div>

</div>

<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
 <script>
	$(function() {	//팝업드래그
		$("#write2").draggable();	});
 </script>