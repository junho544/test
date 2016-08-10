<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>




<link rel="stylesheet" type="text/css" href="/testgit/css/main/main.css">




 <script type="text/javascript">//레이어팝업
 
   $(document).ready(function() { // 오픈톡 레이어팝업 창띄우기
    $('.pop_bt').click(function() {
     $('#pop').show();
    });
    $('#close').click(function() {
     $('#pop').hide();
    });
    $('#pop_talk').click(function() {
        $('#talk_chat').show();
    });
    $('#closetalk').click(function() {
        $('#talk_chat').hide();
    });
   });   
   
 </script> 
 
 <script>//팝업창드래그

	$(function() {	//팝업드래그
		$( "#pop" ).draggable();
	});

</script>
 	<div id="topright" class="pop_bt">열기</div>
 	
 	
 	
 	 <div id="pop" class="open" style="display:none;" >
    <div class="notice" >openTalk
        <div id="noticeright" style="text-align:right">
            <div id="close">X</div>
        </div>
    </div>
    <div class="contentsTop">
    	<table id="toptable" >
		   	<tr>
		   		<td width="50px"><span id="mem" >1</span></td>
		   		<td width="50px"><span id="mem2">2</span></td>
		   		<td width="50px"><span id="mem3">3</span></td>
		   		<td width="100px">4</td>
		   	</tr>
    	</table>
    </div>

    <div class="contents">
    	<span id="member"></span>
	</div>
</div>  










<script language="JavaScript">
    function openCreate() {
url = "/testgit/popup.now";
        
        
        window.open(url, "create", 'left='+(screen.availWidth-500)/2+',top='+(screen.availHeight-350)/2+', width=500px,height=350px');
    }
</script>

<button class="button" onclick="openCreate(this.form)">커뮤니티 만들기</button>