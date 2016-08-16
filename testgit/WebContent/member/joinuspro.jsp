<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>

function goback(){
	history.go(-1);
}

</script>

<html>
<head>
    <!-- Bootstrap Core CSS -->
    <link href="/testgit/css/bootstrap.min.css" rel="stylesheet">
    <link href="/testgit/css/business-casual.css" rel="stylesheet">

  
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="/testgit/image/blue.png"/>
<img src="/testgit/image/back.png" onclick="goback();" style="cursor: pointer;"/>


<form name="input" action="firstview.now" method="post"/>

 <div class="container">


<center>
<img style="margin-top:50px;" src="/testgit/image/joinok.png"/>
</center>
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                


             <p>${nickname}님 '우리지금만나' 가입을 진심으로 감사드립니다.</p>
             <p>로그인 후에 다양한 컨텐츠를 이용해보세요.<p>
               
                <button style="margin-top:30px;" type="submit" class="btn btn-primary btn-lg btn-block">로그인하러 가기</button>
               
                
                </div>
                </div>
                </div>
                </div>
                </form>
            
                
                

                
                

</body>
</html>