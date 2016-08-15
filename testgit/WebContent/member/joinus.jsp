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
        
        if(!input.id.value) {
            alert("닉네임을 입력하세요");
            return false;
        }
        
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


   }
    </script>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="/testgit/image/blue.png"/>



<form name="input" action="joinuspro.now" method="post" onSubmit="return checkIt()"/>

 <div class="container">


<center>
<img style="margin-top:100px;" src="/testgit/image/join.png"/>
</center>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                
<center>
<table>
<tr>
<td width="70">
아이디
</td>

<td>
<div class="input-group input-group-lg"> 
  <input type="text" name="id" size="40" class="form-control" placeholder="identity" aria-describedby="sizing-addon1">
</div>
</td>
</tr>

<tr>
<td width="70">
닉네임
</td>

<td>
<div class="input-group input-group-lg"> 
  <input type="text" name="nickname" size="40" class="form-control" placeholder="Nickname" aria-describedby="sizing-addon1">
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
  <input type="text" name="email" size="40" class="form-control" placeholder="Email" aria-describedby="sizing-addon1">
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

                
                <button style="margin-top:30px;" type="submit" class="btn btn-primary btn-lg btn-block">가입완료</button>
                
                
                </div>
                </div>
                </div>
                </div>
                </form>
            
                
                

                
                

</body>
</html>