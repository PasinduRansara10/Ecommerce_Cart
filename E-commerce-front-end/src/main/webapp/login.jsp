<%@ page import="user.model.*" %>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!-- Check if user is authenticated and redirect to index.jsp if true.-->
	<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null){
		//request.setAttribute("auth", auth);
		response.sendRedirect("index.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
	
<!DOCTYPE html>
<html>
<head>
<title>Shopping Cart Login</title>
<%@ include file="../includes/header.jsp"%>
<!-- Call a JSP file from the includes folder -->

</head>
<body>

	<%@include file="../includes/navbar.jsp"%>
	<!-- Call a JSP file from the includes folder -->

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<!-- 'user-login' is the servlet name for LoginServlet.java in the servlet package -->


					<div class="form-group">
						<label>Email</label> <input type="email" class="form-control"
							name="login-email" placeholder="Email" required>
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="login-password"
							placeholder="Enter your Password" required>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>

					<div>
						Haven't an account? <a href="register.jsp">
							Register here.</a>
						<!-- link with Register page -->
					</div>


				</form>
			</div>
		</div>
	</div>

	<%@include file="../includes/footer.jsp"%>
	<!-- Call a JSP file from the includes folder -->

</body>
</html>