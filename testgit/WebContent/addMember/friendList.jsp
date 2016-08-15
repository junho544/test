<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>


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

 	
 	 <div id="pop" class="open">
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
		   	<td><span id="memSearch"><input type="text" onFocus="clearText(this)" onblur="retext(this)" value="친구검색하기/자동완성"></span></td>
		   	</tr>
		   	
    	</table>
    </div>

    <div class="contents">
   
    	<span id="member">
    	<table>
    	<c:forEach var="friend" items="${friendList}"> 
    	검색창에 이름을 치면 return 페이지로 친구들 보여주기
    	<tr><td><div id="memList"><font color=green>●</font>
    	<span id="imgg"><img src="/testgit/image/profile.jpg"/></span> 
    	<il id="profileUser"><b>${friend.nickname}</b> / <font size="1">상태메세지 또는 대화명</font></il></div></td></tr>
    	
    	</c:forEach>
    	</table>
    	</span>
    	
	</div>
</div>  
















    
    