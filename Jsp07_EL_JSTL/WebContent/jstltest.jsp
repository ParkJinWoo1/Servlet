<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>JSTL Page</h1>
	<!-- Jsp Standard Tag Library -->
	
	<table border="1">
		<tr>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>총점</th>
			<th>평균</th>
			<th>등급</th>
		</tr>
		<c:forEach items="${list }" var="score">
			<tr>
				<td>
					<c:if test="${score.name eq '이름10' }">
						<c:out value="박진우"></c:out>
					</c:if>
					
					<!-- choose는 switch문으로 보자 choose태그안에 있는 case 조건들을 보고
						  마지막 otherwise를 defalt로 본다
						  위에 if는 td안에 있기 때문에 default로 본다-->
					<c:choose>
						<c:when test="${score.name eq '이름20' }">
							<c:out value="${score.name } 님!!"></c:out>
						</c:when>
						<c:when test="${score.name eq '이름30' }">
							<c:out value="${score.name }"></c:out>
						</c:when>
						<c:otherwise>
							<c:out value="누구지?"></c:out>
						</c:otherwise>
					</c:choose>
				</td>
				<td>${score.kor }</td>
				<td>
					${score.eng }
					<c:if test="${score.eng >= '70' }">멋져!!</c:if>
				</td>
				<td>${score.math }</td>
				<td>${score.sum }</td>
				<td>${score.avg }</td>
				<td>
					
					<c:choose>
					<c:when test="${score.grade eq 'A' || score.grade eq 'B'}"><c:out value="pass"></c:out></c:when>
						<c:otherwise>
							<c:out value="fail"></c:out>
						</c:otherwise>
					</c:choose>
				</td>
			
			</tr>
		</c:forEach>
	</table>


</body>
</html>