<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<link href="/testgit/css/business-casual.css" rel="stylesheet">



<table border="0" width="1100">
<c:forEach var="list" items="${list}">
<tr>
<td rowspan="2" height="100">

<c:choose>
<c:when test="${list.nickname=='정연쓰'}">
<img src="/testgit/image/suzy.png">
</c:when>


<c:when test="${list.nickname=='park'}">
<img src="/testgit/image/hyun.jpg">
</c:when>

<c:otherwise>
<img src="/testgit/image/zico.png">
</c:otherwise>
</c:choose>



</td>
<td width="790" height="10">
&nbsp;&nbsp;&nbsp;<strong>${list.nickname}</strong>
</td>
<td>
${list.reg_date}
</td>

<td width="40">
<c:if test="${list.nickname==member}">
<button type="button" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></button>
</c:if>

</td>



</tr>
<tr>
<td colspan="4" rowspan="2">

${list.boast_comment}

</td>
</tr>
<tr>
<td>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td>
<p>&nbsp;</p>
</td>
</tr>



</c:forEach>
</table>
<c:if test="${count> 0 }">
				<c:set var="pageCount"
					value="${count / pageSize + (count % pageSize == 0 ? 0 : 1)}" />
				<fmt:parseNumber var="result" value="${currentPage / 10}"
					integerOnly="true" />
				<c:set var="startPage" value="${result*10+1 }" />
				<c:set var="pageBlock" value="${10}" />
				<c:set var="endPage" value="${startPage+pageBlock-1 }" />

				<c:if test="${endPage>pageCount}">
					<c:set var="endPage" value="${pageCount}" />
				</c:if>

				<ul class="pagination">

					<c:if test="${startPage>10 }">
						<a href="boast_content.now?pageNum=${startPage - 10}">[이전]</a>
					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="boast_content.now?pageNum=${i}">${i}</a>
					</c:forEach>

					<c:if test="${endPage<pageCount }">
						<a href="boast_content.now?pageNum=${startPage + 10 }">[다음]</a>
					</c:if>

					<c:if test="${sessionScope.memNickname != null}">
						<br />
					</c:if>
				</ul>
			</c:if>
</html>