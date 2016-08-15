<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <!-- Bootstrap Core CSS -->
    <link href="/testgit/css/bootstrap.min.css" rel="stylesheet">
    <link href="/testgit/css/business-casual.css" rel="stylesheet">
    <script language="JavaScript">
    
    function checkIt() {
        var input = eval("document.input");
        
        if(!input.nickname.value) {
            alert("닉네임을 입력하세요");
            return false;
        }
        
        if(!input.pw.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        if(input.pw.value != input.pw2.value){
            alert("비밀번호를 동일하게 입력하세요");
            return false;
        }

        if(!input.email.value) {
            alert("이메일을 입력하세요");
            return false;
        }
        
        alert("회원정보가 변경되었습니다.")


   }
    
    
   
    
    function checkIt2() {
    	
    	
    	
    	var a= eval(document.input2)
    	

    	
    	if(!a.pwcheck.value){
    		alert("비밀번호를 입력해주세요.")
    		return false;
    	}
    	
    	
    }

  </script> 
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="/testgit/image/blue.png"/>



<form name="input" action="modifypro.now" method="post" onSubmit="return checkIt()"/>

 <div class="container">


<center>
<img style="margin-top:100px;" src="/testgit/image/mypage.png"/>
</center>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                
                
                
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>회원정보수정</strong>
                    </h2>
                    <hr>
                    <br/>
                    <br/>
                
                
                
                
                
<center>
<table>
<tr>
<td width="70">
닉네임
</td>

<td>
<div class="input-group input-group-lg"> 
  <input type="text" name="nickname" value="${member.nickname}" size="40" class="form-control" placeholder="Nickname" aria-describedby="sizing-addon1">
</div>
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
</tr>

<tr>
<td width="70">
비밀번호
</td>

<td>
<div class="input-group input-group-lg">
  <input type="password" name="pw" size="40" class="form-control" placeholder="Password" aria-describedby="sizing-addon1">
</div>
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
</tr>

<tr>
<td width="70">
비밀번호중복확인
</td>

<td>
<div class="input-group input-group-lg">
  <input type="password" name="pw2" size="40" class="form-control" placeholder="Password" aria-describedby="sizing-addon1">
</div>
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
</tr>

<tr>
<td width="70">
이메일
</td>

<td>
<div class="input-group input-group-lg">
  <input type="text" name="email" size="40" value="${member.email}" class="form-control" placeholder="Email" aria-describedby="sizing-addon1">
</div>
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
<td>
<font size="2" color="red">※이메일은 계정정보 분실시, 친구찾기시 사용되니 정확히 입력해주세요.</font>
</td>
</tr>
</table>
</center>

<br/>

<center>

                
                <button type="submit" class="btn btn-primary btn-lg">수정하기</button>
                


</center>                
                </div>
                </div>
                </div>
                </div>
                </form>
                
                
                
                
                
                <form name="input2" action="delete.now" method="post" onSubmit="return checkIt2()"/>

 <div class="container">
                        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                
                
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>회원탈퇴</strong>
                    </h2>
                    <hr>
                    <br/>
                    <br/>
                    
                    <center>
                    <table>
                    <tr>
                    <td colspan="2">
                    <p>${member.nickname}님, 우리지금만나를 탈퇴하는 이유를 알려주세요</p>
                    </td>
                    <tr>
                    
<tr>
<td>
&nbsp;
</td>
</tr>   
<tr>
<td>
&nbsp;
</td>
</tr>   
                    
                    
                    <tr>
                    <td></td><td>
                    <input type="radio" name="reason" value="너무 많은 시간을 허비하고 있습니다.">너무 많은 시간을 허비하고 있습니다.
                    </td>
                    </tr>
                    
<tr>
<td>
&nbsp;
</td>
</tr>                    
                    
                    <tr>
                    <td></td><td>
                    <input type="radio" name="reason" value="개인정보보안이 우려됩니다.">개인정보보안이 우려됩니다.
                    </td>
                    </tr>

<tr>
<td>
&nbsp;
</td>
</tr>                      
                    <tr>
                   <td></td><td>
                    <input type="radio" name="reason" value="우리지금만나는 유용하지 않습니다.">우리지금만나는 유용하지 않습니다.
                    </td>
                    </tr>
<tr>
<td>
&nbsp;
</td>
</tr>   
                    
                    <tr>
                    <td></td><td>
                    <input type="radio" name="reason" value="다른 계정을 사용하고 있습니다.">다른 계정을 사용하고 있습니다.
                    </td>
                    </tr>
                    
<tr>
<td>
&nbsp;
</td>
</tr>   
                    
                    <tr>
                    <td></td><td>
                    <input type="radio" name="reason" value="다른 SNS를 사용하려고 합니다.">다른 SNS를 사용하려고 합니다.
                    </td>
                    </tr>

<tr>
<td>
&nbsp;
</td>
</tr>                       
                    <tr>
                    <td></td><td>
                    
                    <input type="radio" name="reason" value="기타" checked="checked">기타
                    </td>
                    </tr>
                    
                    
<tr>
<td>
&nbsp;
</td>
</tr>
 <tr>
<td>
&nbsp;
</td>
</tr>

<tr>
<td width="100">
비밀번호체크
</td>

<td>
<div class="input-group input-group-lg">

  <input type="password" name="pwcheck" size="40" class="form-control" placeholder="Password Check" aria-describedby="sizing-addon1">
   
</div>
</td>
</tr>
<tr>
<td></td><td>
<font size="2" color="red">※탈퇴하기 버튼을 누르면 탈퇴가 완료되며, 복구가 불가능합니다.</font>
</td>
</tr>
                    
                    
                    
                    
                    
                    </table></center>
                    <br/>
                    <br/>
                    
<center>   
<button type="submit" class="btn btn-primary btn-lg">탈퇴하기</button>            
</center> 
                
                
                
                
                </div>
                </div>
                </div>
                </div>
                </form>
            
                
                

                
                

</body>
</html>