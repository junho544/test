<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <!-- Bootstrap Core CSS -->
    <link href="/testgit/css/bootstrap.min.css" rel="stylesheet">
    <link href="/testgit/css/business-casual.css" rel="stylesheet">
    


    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="/testgit/image/blue.png"/>




<form name="input" action="talkpro.now" method="post"/>

 <div class="container">


<center>
<img src="/testgit/image/talkchange.png"/>
</center>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                
<div class="input-group input-group-lg">
  <span class="input-group-addon" id="sizing-addon1">Screen Name</span>
  <input size="55" type="text" name="talk" class="form-control" 
  value="${member.talk}" placeholder="대화명을 입력해주세요" aria-describedby="sizing-addon1">
</div>
<br/>

<center>    
<button type="submit" class="btn btn-primary btn-lg">수정하기</button>
</center>

                
                
                </div>
                </div>
                </div>
                </div>
                </form>
            
                
                

                
                

</body>
</html>