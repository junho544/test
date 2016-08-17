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

<div id="ddd">
<script>
/* var list1 = new Array();
<c:forEach items="${friendInfor}" var="item1">

list1.push("${item1.id}");

</c:forEach>
var i=22;
for ( var i = 0; i < list1.length; i++) {
   
    var i = list1[i];
  	
} */

var count=0;
function reload(id,fid,num,test){
	alert("일로옴");

	chat(id,fid,num,test);
	
}
function chat(id,fid,num,test){
	
	var my_num = '${userinfor.num}';
	var user_friend = my_num+num;
	var friend_user = num+my_num;


	
	$.ajax({

	type:"post",
	url :"chat.now?id="+id+"&friend_id="+fid+"&user_friend="+user_friend+"&friend_user="+friend_user,
	
	success:accpt,
	error:error
		
	}); 
	
	}
	
	    
	 




function accpt(bbb){
	
	$("#return2").html(bbb);
	 
	return false;
	
}
function error(){
	alert("수락에러");
}
</script>
</div>
 
 
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
    <li><a >쪽지보내기</a></li>  
    <li><a >프로필보기</a></li>
    
   
    <li ><a id="${friend.id}"onclick="reload('${sessionScope.memId}','${friend.id}','${friend.num}','${test}');">대화시작</a></li>

  </ul>
  </div>
    	  <font size="1">${friend.talk} 
    	  </font></il></div></td></tr>
    	</c:forEach>
    	</table>
    	</div>
		 </div>   
	
	
	<%-- <a id="foo${test}" >클릭</a> --%>
	<%-- <input type="hidden" value="hid" id="check${test}" /> --%>
	</div>
</div>  



<!-- 
<script>
 function chat(){
	 	var id =  $('#check${test}').val() ; 
		alert(id);
		var bb='${test2}';
		alert(bb);
			
			
		var my_num = '${userinfor.num}';
		var user_friend = my_num+num;
		var friend_user = num+my_num;
		
		
		$.ajax({
		type:"post",
		url :"chat.now?id="+id+"&friend_id="+fid+"&user_friend="+user_friend+"&friend_user="+friend_user,
		
		success:accpt,
		error:error
			
		});}


	function accpt(bbb){
		$("#return2").html(bbb);
		
	}
	function error(){
		alert("수락에러");
	}

	$(document).ready(function() {
		  $('#foo${test2}').bind('click', function() {
			
		    doSomething();  
		  });
		});
		 
		var doSomething = function(){
		  $('#foo${test2}').unbind('click');
		  	 chat();
		 done(function() {
		    $('#foo').bind('click', function() {
		    	alert("3");
		      doSomething();  
		    });    
		  });
		}

</script>

 -->


<%-- 	<c:forEach items="${friendInfor}" var="item1">
	list1.push("${item1.id}");
	if(fid=='${item1.id}'){
	$('#${item1.id}').removeAttr('onclick');
	}
	var s = '#${item1.id}';
	
	</c:forEach> --%>





    
    