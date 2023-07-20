<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="utils.*, java.util.List"%>
<!DOCTYPE html>
<%


	ServletContext context = request.getServletContext();
	
	String uname = context.getInitParameter("uname");
	String password = context.getInitParameter("password");
	String driver = context.getInitParameter("driverName");
	String url = context.getInitParameter("url");
	DbDetails dbDetails = new DbDetails(driver, url, uname, password);
	
	DBManip dbManip = new DBManip(dbDetails);
	
	
%>
<html>
<head>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">

<title>List of Products</title>

</head>
<body class="text-bg-dark">
<div class="container">

<div class="card text-bg-dark border border-secondary p-1 rounded" style="margin:15%; width:50%; margin-left:25%">
					<div class="card-header h2 text-center pb-2">List of Products </div>
<table class="table table-striped table-dark" >
<tr>
<th>
KEY-ID
</th>
<th>
Product ID
</th>
<th>
Product Name
</th>
<th>
Product Price
</tr>
</th>
<%
	List<Product> listOfProducts = dbManip.getProduct();
	for(Product p:listOfProducts){
		
	
%>

	<tr>
		<td>
		<%= p.getKeyId() %>
		</td>
		<td>
		<%= p.getpId() %>
		</td>	
		<td>
		<%= p.getpName() %>
		</td>
		<td>
		<%= p.getpPrice() %>
		</td>
	</tr>
<%
	}
%>

</table>
</div>	
</div>
</body>
</html>