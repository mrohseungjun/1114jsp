<%@page import="com.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	BoardDAO dao = BoardDAO.getInstance();
	int flag = dao.boardDelete(num);
	if(flag == 1){
%>		
		<script>
			alert("삭제 성공");
			location.href="list.jsp";
		</script>
<%		
	}else{
%>		
		<script>
		alert("삭제 실패");
		location.href="list.jsp";
	</script>
<%	
	}
%>


