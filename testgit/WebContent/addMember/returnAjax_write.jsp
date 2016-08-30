<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
#submit{
position: relative;
width:50px;
}
#close{

color:red;
}
}
</style>    
받는사람 : ${userinfor.nickname}(${userinfor.id}) <br />

내용 <br />

<textarea id="writeContent"cols="57"rows="12"></textarea>
<div id="submit" onclick="submit(writeContent.value,'${sessionScope.memId}','${userinfor.id}')">
보내기
</div>


<script>

function submit(msg,id,fid){
	
	if(msg==""){
		alert("쪽지 내용을 입력해 주세요");
	}
	if(msg!=""){
		$.ajax({
	        type: "post",
	        url : "message.now?msg="+msg+"&friend_id="+fid,
		});
		alert("쪽지를 보냈습니다.");
		document.getElementById('write2').style.display='none';
	}

}


</script>