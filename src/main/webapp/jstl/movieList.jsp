<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] movieList={"영화1","영화2","영화3","영화4","영화5"};
	pageContext.setAttribute("movieList", movieList);
%>

<table>
<tr>
	<th>index</th>
	<th>count</th>
	<th>title</th>
</tr>
<c:forEach items="${movieList}" var="movie" varStatus="st">
<tr>
<td>${st.index}</td>
<td>${st.count}</td>
<td>${movie}</td>
<td>
	<c:if test="st.first">첫번째</c:if>
	<c:if test="st.last">마지막</c:if>
</td>
<tr>
</c:forEach>
</table>

</body>
</html>