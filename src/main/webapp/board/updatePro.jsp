<%@page import="com.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	 request.setCharacterEncoding("utf-8");
 %>   
 <jsp:useBean id="board" class="com.board.dto.BoardDTO"></jsp:useBean>
 <jsp:setProperty property="*" name="board" />
 <%
 	BoardDAO dao = BoardDAO.getInstance();
 	board.setIp(request.getRemoteAddr());
 	 int flag =  dao.boardUpdate(board);
 	 if(flag == 1){
 		response.sendRedirect("list.jsp");
 	 }else{
 %>
 		<script>
 			alert("비밀번호가 일치하지 않습니다.");
 			history.back() //이전페이지 == history.go(-1)
  		</script>		 
 <%		 
 	 }
 	 
 %>
 
 
 
 
 
