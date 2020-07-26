<%-- 
    Document   : _blank.jsp
    Created on : Jul 25, 2020, 1:38:41 PM
    Author     : efraingaray
--%>
<%
    String resp = (String) request.getAttribute("respuestaVenta");
    int total = Integer.parseInt(resp);
 %>
<jsp:include page="./includes/header.jsp"/>

<div class="section no-pad-bot" id="index-banner-respueta">
    <div class="container margin-top-120">

        <h1 class="header center pink-text text-shadow-1">Gracias por su Compra</h1>
        <div class="row center"> 
            <h5 class="header col s12 light">Valor de su Compra: <%=total %></h5>
            <div class="row center">
                
                <a href="./" class="btn-large waves-effect waves-light pulse purple lighten-2">Home</a>
                    
            </div>
        </div>
    </div>   
</div>

<jsp:include page="./includes/footer.jsp"/>
