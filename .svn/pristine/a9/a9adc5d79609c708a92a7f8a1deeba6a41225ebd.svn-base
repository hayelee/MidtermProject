<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int boardId = Integer.parseInt((request.getParameter("boardId")));
	String memId = request.getParameter("memId");
	String boardReportContent = request.getParameter("boardReportContent");

	// JDBC를 사용해서 DB정보 가져오기
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:192.168.35.64:1521:xe";
	Connection conn = DriverManager.getConnection(url, "team4_202208M", "java");
	Statement stmt = conn.createStatement();
	String sql = " INSERT INTO BOARD_REPORT "
			+ " VALUES ((SELECT 'BR'||TO_CHAR(SUBSTR(MAX(BOARD_REPORT_ID),3,3)+1) FROM BOARD_REPORT), "
			+ " "+boardId+ ", "+boardReportContent+", SYSDATE, 0, "+memId+" ";
	stmt.executeQuery(sql);

	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
%>
		{"rst" : "ok"}
<%
	}else{
%>
		{"rst" : "fail"}		
<%
	}
%>