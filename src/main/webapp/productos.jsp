<%-- 
    Document   : _blank.jsp
    Created on : Jul 25, 2020, 1:38:41 PM
    Author     : efraingaray
--%>
<jsp:include page="./includes/header.jsp"/>



<div class="section no-pad-bot" id="index-banner">

</div>


<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">

            <c:forEach items="${servicio.getProductos()}" var="producto">
                <div class="col s12 m4">
                    <div class="card">
                        <h5 class="header purple-text center-align">${producto.getNombre()}</h3>
                        <blockquote>
                            ${producto.getCategoria().getNombre()}
                        </blockquote>
                        <div class="card-image">
                            <img src="./assets/img/producto1.png">
                            <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add_shopping_cart</i></a>
                        </div>
                        <div class="card-content">
                            <h5 class="red-text text-accent-2">Precio $<fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${producto.getPrecio()}" /> </h5>
                            <p>
                                 ${producto.getCategoria().getDescripcion()}
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>



        </div>
        <br><br>
    </div>
</div>
    <jsp:include page="./includes/footer.jsp"/>
