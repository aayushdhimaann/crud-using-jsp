<%@page import = "java.sql.*"%>
<% 
	String phone = request.getParameter("phone"); 
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/data?user=root&password=");
	PreparedStatement ps = con.prepareStatement("delete from employee where phone=?");
	ps.setString(1,phone);
	ps.executeUpdate(); 
	out.println("record deleted"); 
	response.sendRedirect("Welcome.jsp"); 
%>