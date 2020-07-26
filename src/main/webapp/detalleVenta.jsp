<%-- 
    Document   : _blank.jsp
    Created on : Jul 25, 2020, 1:38:41 PM
    Author     : efraingaray
--%>
<%@page import="modelo_venta.Producto"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%
    Producto producto = (Producto) request.getAttribute("Producto");  
%>

<jsp:include page="./includes/header.jsp"/>
<form action="Productos" method="get">
    <div class=" center-align">
        <div class="section no-pad-bot" id="index-banner-detalle">



            <div class="container">
                <div class="col s12 m7">
                    <h2 class="header">Detalle Venta</h2>
                    <div class="card horizontal">
                        <div class="card-image padding-15">
                            <img src="./assets/img/<%=producto.getImg()%>">
                        </div>
                        <div class="card-stacked">
                            <div class="left-align">
                                <p> Codigo: <%=producto.getCodigo()%></p>
                                <p>Nombre producto: <%=producto.getNombre()%> </p>
                                <p>Precio: $<%=producto.getPrecio()%></p>
                                <br>
                                <p>Stock: <%=producto.getStock()%></p
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col s12">
                                        <p class="range-field">
                                            <input type="range" name="cantidad" id="test5" min="1" max="<%=producto.getStock()%>" value="1" />
                                            <input type="hidden" value="<%=producto.getCodigo()%>" name="codigo" />  
                                            <input type="hidden" value="comprar" name="page" />  

                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                </div>

                <div class="row center">
                    <button type="submit"  class="btn-large waves-effect waves-light cyan">Comprar</button>
                </div>
                <br><br>

            </div>
        </div>

</form>











<jsp:include page="./includes/footer.jsp"/>
