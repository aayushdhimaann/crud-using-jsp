<%@page import = "java.sql.*"%>
<% 
	String phone = request.getParameter("p");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String email=request.getParameter("email");
	String phone1=request.getParameter("phone");
	try{ 
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/data?user=root&password="); 
		PreparedStatement ps = con.prepareStatement("update employee set address=?,city=?,state=?,email=?,phone=? where phone=?");
		ps.setString(1,address);
		ps.setString(2,city); 
		ps.setString(3,state);
		ps.setString(4,email);
		ps.setString(5,phone1);
		ps.setString(6,phone);
		ps.executeUpdate(); 
		response.sendRedirect("Welcome.jsp");
		} 
		catch(Exception e){
			out.println(e); 
		} 
	%>