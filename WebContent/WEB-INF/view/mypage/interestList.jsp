<%@page import="follows.vo.FollowsVO"%>
<%@page import="board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="follows.service.FollowsServiceImpl"%>
<%@page import="follows.service.IFollowsService"%>
<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO mv2 = (MemberVO)session.getAttribute("memberVO");
	List<BoardVO> boardList = (List<BoardVO>)request.getAttribute("interestList");
%>


<!-- Head-->
	<jsp:include page="../comm/head.jsp" />
	
	<!-- CSS -->
	<style>
	#title{
		text-align: center;
	}
	
	#wrapper{
	  height: auto;
	  min-height: 100%;
	  padding-bottom:600px;
/* 	  display: flex; */
 	  justify-content: center; 
	}
	
	 a:link { color: black; text-decoration: none;}
	 a:visited { color: black; text-decoration: none;}
	 a:hover { color: black; text-decoration: underline;}
	 
	 section {
		height: 100vh;
		padding: 50px 300px;
	}
	
	.title {
		padding-bottom: 20px;
	}
	
	.table {
/* 		margin-left: auto; */
/* 		margin-right: auto; */
		margin: 20px auto;
	}
	
	.table th {
		width: 150px;
		background-color: #f2f3f6;
	}
	
/* 	td .noticeContent { */
/* 		padding: 10px; */
/* 	} */
	
	.noticeContent {
		height: 500px;
		padding: 20px;
		border-bottom: #eaebee 2px solid;  
		margin: 20px;
		
	}
	
	button {
		background: #4d5159;
		color: #ffffff;
		border: none;
		border-radius: 10px;
		padding: 10px;
		float: right;
		margin-right: 10px;
	}

	.bottombtn {
		float: right;
	}
	</style>
	
<html>
   <body>
   		<!-- Navigation-->
		<jsp:include page="../comm/header.jsp" />
   
<div id="wrapper" >
	<div id="title">
	     <h3>나의 찜목록</h3>
	</div>
         <!-- Content -->
	<div>
	<table class="table" style="width:90%">
	  <thead class="table-light">
	    <tr>
	      <th scope="col" style="width:16.66%">글번호</th>
	      <th scope="col" style="width:50%">제목</th>
	      <th scope="col" style="width:20%">가격</th>
	      <th scope="col" style="width:14%">판매자</th>
	    </tr>
	  </thead>
	  <tbody>
	  <!-- <tbody class="table-group-divider"> -->
	<%
		for(BoardVO bv : boardList) {
	%>
	      <tr>
	        <th scope="row"><%=bv.getBoardId() %></th>
	        <td><a href="/DaangnProject/BoardDetail.do?boardId=<%=bv.getBoardId() %>"><%=bv.getBoardTitle() %></td>
	        <td>&#8361;<%=bv.getPrice() %></td>
	        <td><%=bv.getMemId() %></td>
	      </tr>
	<%
		}
	%>	
	      
	  </tbody>
	</table>
			
	</div>
</div>
		
		
		
        <!-- Footer-->
        <jsp:include page="../comm/footer.jsp" />
        
   </body>
</html>
