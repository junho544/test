<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
번호 보낸사람 내용 날짜 <br />
<c:forEach var="msg" items="${msg}" varStatus="count">
<input type="checkbox">[${count.count}] 


<c:choose>
           <c:when test="${fn:length(msg.id) > 10}">
            <c:out value="${fn:substring(msg.id,0,9)}"/>....
           </c:when>
           <c:otherwise>
            <c:out value="${msg.id}"/>
           </c:otherwise> 
          </c:choose>


           <c:choose>
           <c:when test="${fn:length(msg.msg) > 2}">
            <c:out value="${fn:substring(msg.msg,0,1)}"/>....
           </c:when>
           <c:otherwise>
            <c:out value="${msg.msg}"/>
           </c:otherwise> 
          </c:choose>
 
 
 
  ${msg.regdate }<br />
 

</c:forEach>