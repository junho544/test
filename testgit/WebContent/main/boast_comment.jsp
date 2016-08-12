<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<table>

<c:forEach var="list" items="${list}">
<tr>
<td>${list.nickname}</td><td>${list.reg_date}</td><td></td>
</tr>
<tr>
<td colspan="2">${list.boast_comment}</td>
	<td><c:if test="${mem.nickname==list.nickname}">
		<a href="window.location='deletecomment.now?nickname=${mem.nickname}'"></a>
	</c:if></td>
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
						<a href="boast_content.now?pageNum=${startPage - 10}&num=${num}">[이전]</a>
					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="boast_content.now?pageNum=${i}&num=${num}">${i}</a>
					</c:forEach>

					<c:if test="${endPage<pageCount }">
						<a href="boast_content.now?pageNum=${startPage + 10 }&num=${num}">[다음]</a>
					</c:if>

					<c:if test="${sessionScope.memNickname != null}">
						<br />
					</c:if>
				</ul>
			</c:if>
</html>