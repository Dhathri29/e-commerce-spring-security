<%@ include file="header.jsp" %>

<div class="container">    
  <div class="row">
  <c:forEach items="${products}" var="product">
  <h1> hello</h1>
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"> ${product.name} </div>
        <div class="panel-body">
        <p>Price : ${product.price}  </p>
		<p>Seller :  ${product.seller} </p>  
        </div>
        <div class="panel-footer"> <button type="button" class="btn btn-primary btn-md"
           onClick="location.href='/products/${product.id} ' ">Browse</button></div>
      </div>
    </div>
    </c:forEach>
  </div>
</div><br>

</body>
</html>


<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div style="background-color:#337ab7;height:50px;">

</div>
<br>
<br>
<div class="container">    
  <div class="row">
  <h1> hello</h1>
  <c:forEach items="${products}" var="product">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"> ${product.name} </div>
        <div class="panel-body">
        <p>Price : ${product.price}  </p>
		<p>Seller :  ${product.seller} </p>  
        </div>
        <div class="panel-footer"> <button type="button" class="btn btn-primary btn-md"
           onClick="location.href='/products/${product.id} ' ">Browse</button></div>
      </div>
    </div>
    </c:forEach>
  </div>
</div><br>
 <!-- <div class="container">
  <div class="card" style="width:400px">
    <img class="card-img-top" src="data:image/jpeg;base64,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" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">macBook</h4>
      <p class="card-text">* Dual-core 5th-generation Intel Core i5 processor<br>
                           * Intel HD Graphics 6000 <br>
                           * SSD storage <br>
                           * 8GB memory<br>
                           * Two USB 3 ports <br>
                           * Thunderbolt 2 port <br>
                           * SDXC port <br>
       </p>
      <a href="/placeorder" class="btn btn-primary">PlaceOrder</a>
    </div>
  </div>
  </div>
  <br>
  <br>  -->

</body>
</html> --%>