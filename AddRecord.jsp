<%@page import = "java.sql.*"%>
<% 
	String phone = request.getParameter("phone"); 
	String fname = request.getParameter("fname"); 
	String lname = request.getParameter("lname"); 
	String street = request.getParameter("street"); 
	String address = request.getParameter("address"); 
	String city = request.getParameter("city"); 
	String state = request.getParameter("state"); 
	String email = request.getParameter("email"); 
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/data?user=root&password=");
	PreparedStatement ps = con.prepareStatement("insert into employee values (?,?,?,?,?,?,?,?)");
	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3,address);
	ps.setString(4,city);
	ps.setString(5,state);
	ps.setString(6,street);
	ps.setString(7,email);
	ps.setString(8,phone);
	ps.executeUpdate(); 
	out.println("record added"); 
	response.sendRedirect("Welcome.jsp"); 
%>