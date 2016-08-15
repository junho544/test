<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:if test="${inviteNumber==0}">
   요청이 없습니다.
   </c:if> 
    <c:if test="${inviteNumber!=0}">
    요청개수 : ${inviteNumber}
    </c:if>