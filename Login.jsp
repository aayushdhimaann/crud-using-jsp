<html>
	<head>
		<title></title>
	</head>
	<style> 
	form{ 
	width: 300px; 
	background-color: rgb(64, 220, 220);
	display: block; 
	margin: 100px auto; 
	text-align: center; 
	padding-bottom: 20px; 
	} 
	</style>
	<body>
		<form action="Login.jsp" method="post">
			<h1><u>LOGIN PAGE >> </u></h1>
			Enter user ID : <input type="text" name="t1"><br><br>
			Enter Password : <input type="password" name="t2"><br><br> 
			<input type="submit">
		</form>
	</body>
</html>
<%@page import = "java.sql.*"%> 
<% 
	String uid = request.getParameter("t1"); 
	String pwd = request.getParameter("t2"); 
	try{ 
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/data?user=root&password=");
		PreparedStatement ps = con.prepareStatement("select * from login where user=? and pass=?"); 
		ps.setString(1,uid); 
		ps.setString(2,pwd); 
		ResultSet rs = ps.executeQuery(); 
		if(rs.next()){ %>
			<jsp:forward page="Welcome.jsp"/>
			<%
		} 
		} 
		catch(Exception e){ 
		out.println(e); 
		} 
		%>