<%@page import="java.io.PrintWriter"%>
<%@page import="notice.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- Head-->
	<jsp:include page="../comm/head.jsp" />
<%
	List<NoticeVO> searchList = (List<NoticeVO>) request.getAttribute("searchList");
%>	
	
	
	<!-- CSS -->
	<style>
	table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
	height: 100%;
  padding: 20px 0;
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

.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}

.regBtn {
	background: #4d5159;
	color: #ffffff;
	border: none;
	border-radius: 10px;
	padding: 10px;
	float: right;
/* 	margin-right: 550px; */
	margin: 40px 400px 0px 0px;
	
	
}

	footer{
  		height: 120px;
  		position : relative; 
/*   transform : translateY(-100%); */
		bottom: 0px;
}

</style>
	
    </head>
	
    <body>
   
        <!-- Navigation-->
		<jsp:include page="../comm/header.jsp" />
		
        <!-- Content -->
		
		
		<section class="notice">
		  <div class="page-title">
		        <div class="container">
		            <h3>공지사항</h3>
		        </div>
		    </div>
		
<!-- board search area -->
<!-- 		    <div id="board-search"> -->
<!-- 		        <div class="container"> -->
<!-- 		            <div class="search-window"> -->
<!-- 		                <form action=""> -->
<!-- 		                    <div class="search-wrap"> -->
<!-- 		                        <label for="search" class="blind">공지사항 내용 검색</label> -->
<!-- 		                        <input id="search" type="search" name="searchText" placeholder="검색어를 입력해주세요." value=""> -->
<!-- 		                        <button type="submit" class="btn btn-dark">검색</button> -->
<!-- 		                    </div> -->
<!-- 		                </form> -->
<!-- 		            </div> -->
<!-- 		        </div> -->
<!-- 		    </div> -->
		    
		    
<!-- board list area -->

		    <div id="board-list">
		        <div class="container">
		            <table class="board-table">
		                <thead>
		                <tr>
		                    <th scope="col" class="th-num">번호</th>
		                    <th scope="col" class="th-title">제목</th>
		                    <th scope="col" class="th-date">등록일</th>
		                </tr>
		                </thead>
		                
		                <tbody>
		                
		                <%
		                
		                int noticeSize = searchList.size();
		                
		                if (noticeSize == 0) {
		               		
		                	
		                %>
		                 <td colspan="3" id="td-content">검색 결과가 없습니다.</td>
		                <%	
		                
		                }
		                        		
		                else if (noticeSize > 0) {
		                	for (int i=0; i < noticeSize; i++) {
		           
		                %>
		                
		                
		                <tr>
		                    <td><%=i+1 %></td>
		                    <td><a href="<%=request.getContextPath() %>/notice/detail2.do?noticeId=<%=searchList.get(i).getNoticeId() %>"><%=searchList.get(i).getNoticeTitle() %></a></td>
		                    <td><%=searchList.get(i).getNoticeDate() %></td>
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
		    
		   <button class="regBtn" type="button" onclick="location.href='<%=request.getContextPath() %>/notice/list2.do'">공지사항 목록</button>
		
		</section>
		
		
		
     
        <!-- Footer-->
<%--         <jsp:include page="../comm/footer.jsp" /> --%>

	<!-- JavaScript -->
	<script></script>
    </body>
    
</html>