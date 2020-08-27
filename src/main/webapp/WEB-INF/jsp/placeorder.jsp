<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">    
  <div class="row">
  
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"> ${product.name} </div>
        <div class="panel-body">
        <p>Description : ${product.description}  </p>
        <p>Price : ${product.price}  </p>
		<p>Seller :  ${product.seller} </p>  
        </div>
        <div class="panel-footer"> <button type="button" class="btn btn-primary btn-md"
           onClick="location.href=' ' ">Buy</button></div>
      </div>
    </div>
   
  </div>
</div><br>

</body>
</html>