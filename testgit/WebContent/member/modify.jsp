<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
            alert("�г����� �Է��ϼ���");
            return false;
        }
        
        if(!input.pw.value ) {
            alert("��й�ȣ�� �Է��ϼ���");
            return false;
        }
        if(input.pw.value != input.pw2.value){
            alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
            return false;
        }

        if(!input.email.value) {
            alert("�̸����� �Է��ϼ���");
            return false;
        }  


   }
    </script>
    
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body background="/testgit/image/blue.png"/>



<form name="input" action="joinuspro.now" method="post" onSubmit="return checkIt()"/>

 <div class="container">


<center>
<img style="margin-top:100px;" src="/testgit/image/modi.png"/>
</center>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                
<center>
<table>
<tr>
<td width="70">
�г���
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
��й�ȣ
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
��й�ȣ�ߺ�Ȯ��
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
�̸���
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
<font size="2" color="red">���̸����� �������� �нǽ�, ģ��ã��� ���Ǵ� ��Ȯ�� �Է����ּ���.</font>
</td>
</tr>
</table>
</center>

                
                <button style="margin-top:30px;" type="submit" class="btn btn-primary btn-lg btn-block">�����Ϸ�</button>
                
                
                </div>
                </div>
                </div>
                </div>
                </form>
            
                
                

                
                

</body>
</html>