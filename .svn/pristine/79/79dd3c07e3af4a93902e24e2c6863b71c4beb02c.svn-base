<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="board.vo.BoardVO"%>
<%@page import="trade.vo.TradeVO"%>
<%@page import="member.service.IMemberService"%>
<%@page import="member.service.MemberServiceImpl"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>

<%
	MemberVO mv = (MemberVO)session.getAttribute("memberVO");
	IMemberService memberService = MemberServiceImpl.getInstance();
	TradeVO tv = new TradeVO();
	tv.setSellerId(mv.getMemId());	
	System.out.println(mv.getMemId());
	List<BoardVO> sellList = (List<BoardVO>)memberService.sellList(tv);
%>

    <!-- Head-->
	<jsp:include page="../comm/head.jsp" />
	
	<!-- CSS -->
	
	<style>
 	 a:link { color: black; text-decoration: none;} 
	 a:visited { color: black; text-decoration: none;}
 	 a:hover { color: black; text-decoration: underline;} 
/* 	 a:hover { text-decoration:none !important } */
	 a: { text-decoration:none !important }
	 
	 table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
/*   padding: 30px 0; */
/*   height: 100%; */
padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

#board-list {
	height: 500px;
}

button {
	border: none;
	background-color: #ff7e36;
	color: white;
	padding: 10px;
	border-radius: 10px;
	
}
	</style>
	
    </head>
	
    <body>
   
        <!-- Navigation-->
		<jsp:include page="../comm/header.jsp" />
		
        <!-- Content -->
        
        
        <div class="contents">
	<section class="notice">
		  <div class="page-title">
		        <div class="container">
		            <h3>판매 내역 목록</h3>
		        </div>
		    </div>
        
       <!-- board list area -->
		    <div id="board-list">
		        <div class="container">
		            <table class="board-table">
		                <thead>
		                <tr>
		                    <th scope="col" class="th-num">번호</th>
		                    <th scope="col" class="th-title">게시글 제목</th>
		                    <th scope="col" class="th-date">거래 날짜</th>
		                    <th scope="col" class="th-date">판매자</th>
<!-- 		                    <th scope="col" class="th-date">거래 후기 등록</th> -->
		                </tr>
		                </thead>
		                
		                <tbody>
		                
		                <%
		                
		                int noticeSize = sellList.size();
		                if (noticeSize > 0) {
		                	for (int i=0; i < noticeSize; i++) {
		           
		                %>
		                
		                
		                <tr>
		                    <td><%=i+1 %></td>
		                    <td><a href="<%=request.getContextPath() %>/BoardDetail.do?boardId=<%=sellList.get(i).getBoardId()%>"><%=sellList.get(i).getBoardTitle() %></a></td>
		                    <td><%=sellList.get(i).getRegiTime()%></td>
		                    <td><a href="<%=request.getContextPath()%>/yourPage.do?name=<%=sellList.get(i).getMemId()%>"><%=sellList.get(i).getMemId() %></a></td>
<%-- 		                    <td><button onclick="location.href='<%=request.getContextPath() %>/review/insert.do?">거래후기등록</button></td> --%>
		                </tr>
		                
		                <% 
		                	}
		                } else {
		                %>	
		                
		                <%
		                }		                
		                
		                %>
		                
		                </tbody>
		            </table>
		        </div>
		    </div> 
		    
		    </section>
		    </div>
        
        
        
        
        
        
        
        
        
        
        
<!-- 		<h3>판매목록페이지</h3> -->
		
<!-- 		<table class="table"> -->
<!-- 		    <thead class="table-light"> -->
<!-- 		      <tr> -->
<!-- 		        <th scope="col">글번호</th> -->
<!-- 		        <th scope="col">제목</th> -->
<!-- 		        <th scope="col">가격</th> -->
<!-- 		        <th scope="col"></th> -->
<!-- 		      </tr> -->
<!-- 		    </thead> -->
<!-- 		    <tbody> -->
		    
<%-- 		    <% --%>
// 				for(BoardVO bv : boardList) {
<%-- 			%> --%>
<!-- 			      <tr> -->
<%-- 			        <th scope="row"><%=bv.getBoardId() %></th> --%>
<%-- 			        <td><a href="/DaangnProject/BoardDetail.do?boardId=<%=bv.getBoardId() %>"><%=bv.getBoardTitle() %></a></td> --%>
<%-- 			        <td>&#8361;<%=bv.getPrice() %></td> --%>
<!-- 			        <td> </td> -->
<!-- 			      </tr> -->
<%-- 			<% --%>
// 				}
<%-- 			%> --%>
		    
<!-- 		    </tbody> -->
<!--  	 </table> -->
    <!-- <tbody class="table-group-divider"> -->
	
     
        <!-- Footer-->
        <jsp:include page="../comm/footer.jsp" />

	<!-- JavaScript -->
	<script>


	</script>
    </body>
    
</html>