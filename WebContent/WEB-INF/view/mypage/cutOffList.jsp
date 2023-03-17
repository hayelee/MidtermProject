<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<MemberVO> com = (List<MemberVO>)request.getAttribute("cutOffList");
%>
    <!-- Head-->
	<jsp:include page="../comm/head.jsp" />
	
	<!-- CSS -->
	<style>
	#wrapper{
	  height: auto;
	  min-height: 100%;
	  padding-bottom:600px;
	  
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
		text-align: center;
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
	
    </head>
	
    <body>
   
        <!-- Navigation-->
		<jsp:include page="../comm/header.jsp" />
		
        <!-- Content -->
     
   <%

	if(com==null || com.size() == 0) {
		System.out.println("차단목록 존재하지 않음");
	}else {
		for(MemberVO comm : com) {
	%>
	<%
		}
	}
%>
<div id="wrapper">
	<div>
	
	<table class="table table-striped w=auto" style="width:25%">
	    <thead class="table-light">
	      <tr>
	        <th scope="col">내가 차단한 회원</th>
	      </tr>
	    </thead>
	    <tbody>
	    <!-- <tbody class="table-group-divider"> -->
	<%
	if(com==null || com.size() == 0) {
	%>
		<tr>
			<td colspan="4">차단된 목록이 하나도 없습니다.</td>
		</tr>
	<%
	}else {
		for(MemberVO comm : com) {
	%>
	      <tr>
	        <td><a href="/DaangnProject/yourPage.do?name=<%=comm.getMemId() %>"><%=comm.getMemNic() %></a></td>
	      </tr>
	<%
		}
	}
	%>	
	      
	    </tbody>
	  </table>
   
	</div>
</div>
        <!-- Footer-->
        <jsp:include page="../comm/footer.jsp" />

	<!-- JavaScript -->
	<script></script>
    </body>
    
</html>