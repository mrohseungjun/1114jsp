<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
	int num1 = Integer.parseInt(request.getParameter("num1")); // name으로 변수를 받아옴
	int num2 = Integer.parseInt(request.getParameter("num2")); // name으로 변수를 받아옴
	int sum = num1+num2;
%>
</head>
<body>
덧셈결과: <%=sum%> 
<% 
if(sum%2==0){
%>
짝수
<%
}else{
%>
홀수
<%
}
%>
</body>
</html>