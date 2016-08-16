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
<script>
function clearText(thefield){
	if (thefield.defaultValue==thefield.value)
		thefield.value = ""
	} 
function retext(thefield){
		thefield.value = "친구검색하기/자동완성"
	} 	
	
	

</script>
<script>
function chat(id,fid){

	$.ajax({
	type:"post",
	url :"chat.now?id="+id+"&friend_id="+fid,
	
	success:accpt,
	error:error
		
	});	
}

function accpt(bbb){
	
	$("#return2").html(bbb);
	
}
function error(){
	alert("수락에러");
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
    	<c:forEach var="friend" items="${friendInfor}"> 
    	
    	<tr><td><div id="memList"><font color=green>●</font>
    	<span id="imgg"><img src="/testgit/image/profile.jpg"/></span> 
    	<il id="profileUser">
    	
    	 <div class="dropdown">
    <button id="btn"class="btn btn-info btn-sm" type="button" data-toggle="dropdown">
    <b>${friend.nickname}</b>
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    
    <li><a>쪽지보내기</a></li>  
    <li><a>프로필보기</a></li>
    <li><a  onclick="chat('${sessionScope.memId}','${friend.id}');">대화시작</a></li>

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














    
    