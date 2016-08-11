<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 	
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
    <div class="notice" >접속중인 친구보기
        <div id="noticeright" style="text-align:right">
           
        </div>
    </div>
    <div class="contentsTop">
    	<table id="toptable" >
		   	<tr>
		   		<td width="75px"><span id="mem" >친구목록</span></td>
		   		
		   	</tr>
		   	<tr>
		   	<td><span id="memSearch"><input type="text" onFocus="clearText(this)" onblur="retext(this)" value="친구검색하기/자동완성"></span></td>
		   	</tr>
		   	
    	</table>
    </div>

    <div class="contents">
    	<span id="member">
    	<table>
    	검색창에 이름을 치면 return 페이지로 친구들 보여주기
    	<tr><td>사진/친구</td></tr>
    	<tr><td>사진/친구</td></tr>
    	<tr><td>사진/친구</td></tr>
    	</table>
    	</span>
	</div>
</div>  
