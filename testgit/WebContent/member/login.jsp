<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<c:if test ="${check ==1}">
<meta http-equiv="Refresh" content="0;url=/testgit/main.now" >
</c:if>



<c:if test = "${check !=1}">
<script>
alert("계정정보를 확인하세요.");
history.go(-1);
</script>
</c:if>