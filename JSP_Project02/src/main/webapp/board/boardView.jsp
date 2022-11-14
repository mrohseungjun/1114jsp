<%@page import="com.board.dto.BoardDTO"%>
<%@page import="com.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script   src="https://code.jquery.com/jquery-3.6.1.min.js" ></script>
<%
	request.setCharacterEncoding("utf-8");
	BoardDAO dao = BoardDAO.getInstance();
	int num =Integer.parseInt(request.getParameter("num"));
	BoardDTO board = dao.findByNum(num);
	int ref = board.getRef();
	int re_step = board.getRe_step();
	int re_level = board.getRe_level();
%>
</head>
<script>
function del(){
	if(confirm('정말 삭제할까요?')){
		location.href="deletePro.jsp?num=<%=num%>";
	}
}
</script>
<body>
<h2>글 내용 보기</h2>
<input type="hidden" id="num" value="<%=num %>" />
<table border=1>
	<tr>
		<td>글번호</td>
		<td><%=board.getNum() %></td>
		<td>조회수</td>
		<td><%=board.getReadcount() %></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=board.getWriter() %></td>
		<td>작성일</td>
		<td><%=board.getReg_date() %></td>
	</tr>
	<tr>
		<td>글제목</td>
		<td colspan="3"><%=board.getSubject() %></td>
	</tr>
	<tr>
		<td>글내용</td>
		<td colspan="3"><%=board.getContent() %></td>
	</tr>
	<tr>
		<td colspan="4">
			<input type="button" value="글수정폼"
			 onclick="location.href='updateForm.jsp?num=<%=num %>'" />
			<input type="button" value="삭제"  onclick="del()"/>
		  <input type="button" value="답글쓰기"  
		  onclick="location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref %>&re_step=<%=re_step %>&re_level=<%=re_level %>'"/>
		  <input type="button" value="글목록"  onclick="location.href='list.jsp'" /> 
		</td>
	</tr>
</table>
<br/><br/>
<div align="center">
	<textarea rows="5" cols="50" id="msg"></textarea>
	<input type="button" value="comment Insert"  id="commentBtn" />
</div>
<script>
$("#commentBtn").click(function(){
	if($("#msg").val()==""){
		alert("메세지를 입력하세요")
		return;
	}
	$.ajax({
			type:"get",
			url : "commentInsert.jsp",
			data : {"msg" : $("#msg").val(), "bnum" : $("#num").val()},
			success:function(resp){
				alert(resp);
			},
			error :function(e){
				alert("error : " + e);
			}
	}) //ajax
})//commentBtn


</script>
</body>
</html>



