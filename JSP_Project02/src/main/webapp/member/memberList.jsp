<%@page import="com.member.dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.member.dao.MemberDAOImpl"%>
<%@page import="com.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberLIST</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script   src="https://code.jquery.com/jquery-3.6.1.min.js" ></script>
<script src="../js/member.js"></script>
</head>
<%
	request.setCharacterEncoding("utf-8");
    String sid = (String)session.getAttribute("sUserid");
    MemberDAO dao = MemberDAOImpl.getInstance();
    ArrayList<MemberDTO> arr = dao.memberList();
    int count = dao.getCount();
%>
<body>
	
	<div class="container mt-5">
		<div align="right">
		<a href="memberView.jsp"><%=sid %>님</a>  반갑습니다.   
		 /  <a href="logout.jsp">로그아웃</a>
		</div>
		<h3>회원리스트(<span id="cntSpan"><%=count %></span>)</h3>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>이름</th>
					<th>아이디</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>구분</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%
				for (MemberDTO member   : arr) {
					String mode = member.getAdmin() == 0? "일반회원":"관리자";
		  %>			
					<tr>
					<td><%=member.getName() %></td>
					<td><%=member.getUserid() %></td>
					<td><%=member.getPhone() %></td>
					<td><%=member.getEmail() %></td>
					<td><%=mode %></td>
					<td><a href="javascript:del('<%=member.getUserid() %>','<%=mode %>')">삭제</a></td>
				</tr>
			<%	
				}
			%>
		
			
			</tbody>
		</table>
	</div>
</body>
</html>






