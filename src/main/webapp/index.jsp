<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, javax.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		
		Class.forName("com.mysql.cj.jdbc.Driver");
	    		
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.23.82:3306/kopoctc", "root" , "kopoctc");
		
	    Statement stmt = conn.createStatement();
	    	 
	    ResultSet rset = stmt.executeQuery("select * from examtable;");
	   
	    while (rset.next()) { 
	    
	    	System.out.println("이름:"+rset.getString(1)); //1열 문자 출력
	    	System.out.println("학번:"+rset.getInt(2)); //2열 숫자 출력
	    	System.out.println("국어:"+rset.getInt(3)); //3열 숫자 출력
	    	System.out.println("영어:"+rset.getInt(4)); //4열 숫자 출력
	    	System.out.println("수학:"+rset.getInt(5)); //5열 숫자 출력
	    	System.out.println("=========================");
	    } 	    
	  
	    rset.close(); 
	    stmt.close(); 
	    conn.close(); 
			
	%>			
	
</body>
</html>