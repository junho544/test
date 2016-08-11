<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

    <title></title>
    <script src="/testgit/js/socket.io.js"></script>
    <script src="/testgit/js/socket.io.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
 
<script type="text/javascript"> //프로필


	$(document).ready(function() {
		$("#chat").focus(); //입력창 커서 기본위치 'chat'=> input text name
				
		//var msg = count+':'+basicId+':'+Aid+':'+Bid+':'+$('#chat'+count).val();
	
		socket = io.connect("http://localhost:8080");  //서버연결 192.168.50.48
		socket.on('response', function(msg){// 서버로부터 채팅메세지를 계속 받음
			var content = msg.msg;
		
			
				$('#msgs').append("<span class=from-me style='float:right;'>"+con1[4]+'</span><BR><BR>'+'<div class="clear"></div>');// 채팅 메세지 받아 출력함 //보낸메세지
			
				$('.msgs').append("<span class=from-them style='float:left;'>"+con1[4]+'</span><BR><BR>'+'<div class="clear"></div>'); 
			
			//saveChat(msg);
		});
	});

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

		function chat_enter(){ //전송버튼으로 메세지보내기
 //전송
			$("#chat").focus(); //입력창 커서 기본위치 'chat'=> input text name

			    	var msg = $('.chat').val();
					alert(msg);
					socket.emit('msg', {msg:msg});
						
					callupd();
					
					$(':text:not([id=sdrrate])').val(''); //입력창 초기화 //보낸 후 text박스 빈박스로//text박스 초기화
			    $("#talkfield").scrollTop($("#talkfield")[0].scrollHeight);
		}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////		

</script>

		<span id="msgs" class="msgs">dd </span>
				
				<div class="talktext">
					<input type="text" name="chat" id="chat" class="chat" size="30" onkeydown="JavaScript:chat_enter1();" />
					<input type="button" value="전송" id="sendBtn" class="saveChat" onclick="chat_enter();" />
				</div>
		</div>

</body>
</html>
