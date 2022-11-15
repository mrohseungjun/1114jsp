<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- uri 주소를 c로 쓰겠다  -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>구구단</h3>
<c:forEach begin="1" end="9" var="dan">
	${dan}단</br>
	<c:forEach begin="1" end="9" var="k">
	${dan}*${k}=${dan*k}<br/>
	</c:forEach>
</c:forEach>




<hr/>
<%
int i = 0;
int a = 0;
for(i=1;i<=9; i++){
%>
	<%=i%>단<br/>
<%
	for(a=1;a<=9;a++){
%>	
		<%=a%>*<%=i%>=<%=a*i%><br/>
<% 	
	}
%>
<br/>
<%
}
%>

</body>
</html>