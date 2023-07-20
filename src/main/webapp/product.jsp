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
	
	String productID = request.getParameter("productid");
	String productName = request.getParameter("productname");
	String productPrice = request.getParameter("productprice");
	
	Product newProduct = new Product(productID,productName,productPrice);
//	int newKeyId=9;
 	int newKeyId = dbManip.insertToDB(newProduct);
	
	
	
	
%>
<html>
<head>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<%if(newKeyId!=0) { %>
<title>Successfully Inserted</title>
<% }
else{
%>
<title>Success Failed</title>
<%
}
%>
</head>
<body  class="text-bg-dark">
<div class="container">
<%if(newKeyId!=0) { %>

				<div class="card text-bg-dark border border-secondary p-2 rounded" style="margin:15%; width:50%; margin-left:25%">
					<div class="card-header h2 text-center pb-3 border border-primary rounded">Product Inserted!!! </div>
					<div class="row mb-3 pt-2">
						<label for="productid" class="col-sm-4  h5 ">
							Product Id
						</label>
						<div class="col-sm-8 h5">
							<%=newProduct.getpId() %>
						</div>
					</div>
					<div class="row mb-3">
						<label for="productid" class="col-sm-4  h5">
							Product Name
						</label>
						<div class="col-sm-8 h5">
							<%=newProduct.getpName() %>
						</div>
					</div>
					<div class="row mb-3">
						<label for="productid" class="col-sm-4  h5">
							Product Price
						</label>
						<div class="col-sm-8 h5">
							<%=newProduct.getpPrice() %>
						</div>
					</div>
					<div class="card-footer ">
						<div class="text-center blockquote ">
							<a href="listProducts.jsp">
								<button type="submit" class="btn btn-primary" style="width:18em;font-weight: 800; font-size: 15px;">View All Products</button>
							</a>
						</div>
					</div>
				</div>
				
		
		<% }
else {%>

<h1>Insertion failed</h1>
<%} %>
</div>
</body>
</html>