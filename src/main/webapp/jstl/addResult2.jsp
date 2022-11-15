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
<h3>JSTL 사용</h3>
첫번째 수:${param.num1}<br/>
두번째 수:${param.num2}<br/>
<hr/>
결과 : ${param.num1 + param.num2}<br/>
<c:set var="hap" value="${param.num1 + param.num2}"/>
hap: ${hap}<br/>
hap:<c:out value="${hap}"/><br/> <!--위 hap과 같은 말  -->
<c:if test="${hap%2==0}">
${hqp}:짝수
</c:if>
<c:if test="${hap%2!=0}">
${hqp}:홀수
</c:if>
<hr/>

<c:choose>
	<c:when test="%{hap%2==0}">
		짝수
	</c:when>
	<c:when test="%{hap%3==0}">
		3의배수
	</c:when>
	<c:otherwise>
	짝수도 3의배수도 아님
	</c:otherwise>
</c:choose>
</body>
</html>