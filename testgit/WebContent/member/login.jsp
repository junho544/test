<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<c:if test ="${check ==1}">
<meta http-equiv="Refresh" content="0;url=/testgit/main.now" >
</c:if>



<c:if test = "${check !=1}">
<script>
alert("���������� Ȯ���ϼ���.");
history.go(-1);
</script>
</c:if>