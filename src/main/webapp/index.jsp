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
	    
	    	System.out.println("�̸�:"+rset.getString(1)); //1�� ���� ���
	    	System.out.println("�й�:"+rset.getInt(2)); //2�� ���� ���
	    	System.out.println("����:"+rset.getInt(3)); //3�� ���� ���
	    	System.out.println("����:"+rset.getInt(4)); //4�� ���� ���
	    	System.out.println("����:"+rset.getInt(5)); //5�� ���� ���
	    	System.out.println("=========================");
	    } 	    
	  
	    rset.close(); 
	    stmt.close(); 
	    conn.close(); 
			
	%>			
	
</body>
</html>