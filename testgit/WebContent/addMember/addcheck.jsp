<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<c:if test="${add_search!=0}">
 <script>alert("이미 요청을 보냈습니다.")</script>
</c:if>

<c:if test="${ add_search_invite==1}">
<script>alert("해당회원에게 이미 요청이 왔습니다");</script>
</c:if>

<c:if test="${add_search==0}">
<c:if test="${ add_search_invite==0}">
<script>alert("친구 요청을 보냈습니다.")</script>
</c:if>
</c:if>