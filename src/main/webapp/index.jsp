<%-- 
    Document   : index.jsp
    Created on : 25-07-2020, 14:00:26
    Author     : andre
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="modelo_venta.ServicioLocal"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%! ServicioLocal servicio;%>
<%
    InitialContext ctx = new InitialContext();
    servicio = (ServicioLocal) ctx.lookup("java:global/Trabajo3-1.0-SNAPSHOT/Servicio!modelo_venta.ServicioLocal");
    // ruta donde esta el servicio
%>

<c:set var="servicio" scope="page" value="<%=servicio%>" />

<jsp:include page="./includes/header.jsp"/>

<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <br><br>
        <h1 class="header center purple-text text-shadow-1">Nuestros Productos</h1>
        <div class="row center"> 
            <h5 class="header col s12 light">Obten nuestros productos con solo un Click.</h5>
        </div>
        <div class="row center">
            <a href="#stock" class="btn-large waves-effect waves-light pulse cyan">Conoce nuestro stock</a>
        </div>
        <br><br>

    </div>
</div>


<div class="container">

    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text">
                        <img src="./assets/img/gift-card.png">
                    </h2>
                    <h5 class="center">Regala productos</h5>

                    <p class="light">Materializa tu cariño,genera una experiencia grata a tu seres queridos.</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text">
                        <img src="./assets/img/sale.png">
                    </h2>
                    <h5 class="center">nuestros mejores descuentos</h5>

                    <p class="light">obten los mejor productos con descuentos inolvidables.</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text">
                        <img src="./assets/img/box.png">
                    </h2>
                    <h5 class="center">Calidad de despacho</h5>

                    <p class="light">Nos preocupamos de la calidad y seguridad al enviar tus productos.</p>
                </div>
            </div>
        </div>

    </div>
    <br><br>
</div>

<div class="container" id="productos">
    <h3 class="center-align">Lista de Productos</h3>
    <!--   Icon Section   -->
    <div class="row">
        <c:forEach items="${servicio.getProductos()}" var="producto">
            <div class="col s12 m4">
                <div class="card">
                    <h5 class="header purple-text center-align text-shadow-1">${producto.getNombre()}</h3>
                        <blockquote> 
                            ${producto.getCategoria().getNombre()}
                        </blockquote>
                        <div class="card-image">
                            <img src="./assets/img/${producto.getImg()}">
                            <form class="col s12" action="Productos" method="post">
                                <input type="hidden" name="codigo" value="${producto.getCodigo()}"/>
                                <button type="submit" class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add_shopping_cart</i></button>
                            </form>
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

<div class="container " id="stock">
    <h3 class="center-align">Stock de Productos</h3>
    <table class="striped container cyan lighten-4">
        <thead>
            <tr>
                <th>Codigo</th>
                <th>nombre</th>
                <th>precio</th>
                <th>Stock</th>
                <th>Categoria</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach items="${servicio.getProductos()}" var="producto">
                <tr>
                    <td>${producto.getCodigo()}</td>
                    <td>${producto.getNombre()}</td>
                    <td>$<fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${producto.getPrecio()}" /> </td>
                    <td>${producto.getStock()}</td>
                    <td>${producto.getCategoria().getNombre()}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br><br>
</div>

<jsp:include page="./includes/footer.jsp"/>

