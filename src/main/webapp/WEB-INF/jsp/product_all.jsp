<%@ include file="header.jsp" %>


<div class="container">
<c:forEach items="${products}" var="product">
  <div class="card" style="width:400px">
    <img class="card-img-top"  src= "${product.image}" alt="Card image" style="width:100%">
    <div class="card-body">
      
      <div class="card-title"> ${product.name} </div>
      <p class="card-text"> ${product.price} </p>
      <div class="panel-footer"> <button type="button" class="btn btn-primary btn-md"
           onClick="location.href='/products/${product.id} ' ">Browse</button></div>
      </div>
    </div>
     <br>
      <br>
     </c:forEach>
</div>


<%-- <div class="container">    
  <div class="row">
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
 --%>
</body>
</html>
