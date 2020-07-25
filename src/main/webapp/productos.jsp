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
            <c:forEach var="element" items="${getProductos} ">
                <div class="col s12 m4">
                    <div class="card">

                        <h3 class="header purple-text center-align">PlayStation 4</h3>
                         <blockquote>
                            Tecnologia
                        </blockquote>
                        <div class="card-image">
                            <img src="./assets/img/producto1.png">
                            <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add_shopping_cart</i></a>
                        </div>
                        <div class="card-content">
                            <span class="card-title">$300.000 </span>
                            <p>
                                Consola PS4 Slim 1TB Megapack 6 + 3 juegos + PS Plus 3 meses + Cupón Fortnite
                            </p>
                        </div>
                    </div>
                </div>

            </c:forEach>
            
        </div>
        <br><br>
    </div>
    <jsp:include page="./includes/footer.jsp"/>
