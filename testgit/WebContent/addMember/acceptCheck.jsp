<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
 
 
 
 

 ${friendcheck}
 <c:if test="${friendcheck ==0}">
 <script>
 alert("추가되었습니다")
 </script>
 </c:if>
 
  <c:if test="${friendcheck !=0}">
 <script>
 alert("이미추가된 회원입니다");
 </script>
 </c:if>