<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="follows.vo.FollowsVO"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List" %>
<%
	List<MemberVO> fv = (List<MemberVO>)request.getAttribute("followingList");
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
	 a:link { color: blcak; text-decoration: none;}
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
<div id='wrapper'>
	<div>
	  <table class="table table-striped w=auto" style="width:25%">
	    <thead class="table-light">
	      <tr>
	<!--         <th scope="col">#</th> -->
	        <th scope="col">내가 팔로우중인 회원</th>
	<!--         <th scope="col">Last</th> -->
	<!--         <th scope="col">Handle</th> -->
	      </tr>
	    </thead>
	    <tbody>
	    <!-- <tbody class="table-group-divider"> -->
	<%
		for(MemberVO fvv : fv) {
	%>
	      <tr>
	<!--         <th scope="row">1</th> -->
	        <td><a href="/DaangnProject/yourPage.do?name=<%=fvv.getMemId() %>"><%=fvv.getMemNic() %></a></td>
	<!--         <td>Otto</td> -->
	<!--         <td>@mdo</td> -->
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

	<!-- JavaScript -->
	<script></script>
    </body>
    
</html>

