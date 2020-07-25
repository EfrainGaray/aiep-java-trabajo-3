<%-- 
    Document   : index.jsp
    Created on : 25-07-2020, 14:00:26
    Author     : andre
--%>

<jsp:include page="./includes/header.jsp"/>

  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <br><br>
      <h1 class="header center purple-text">Nuestros Productos</h1>
      <div class="row center">
        <h5 class="header col s12 light">obten nuestros productos con solo un Click</h5>
      </div>
      <div class="row center">
        <a href="#stock" class="btn-large waves-effect waves-light orange">Conoce nuestro stock</a>
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

<div class="container " id="stock">
    <h<2>Conoce el stock de nuestros productos</h2>
  <table class="striped container purple lighten-3"">
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
          <tr>
            <td>Alvin</td>
            <td>Eclair</td>
            <td>$0.87</td>
            <td>$0.87</td>
            <td>$0.87</td>
          </tr>
          <tr>
            <td>Alan</td>
            <td>Jellybean</td>
            <td>$3.76</td>
            <td>$0.87</td>
            <td>$0.87</td>
          </tr>
          <tr>
            <td>Jonathan</td>
            <td>Lollipop</td>
            <td>$7.00</td>
            <td>$0.87</td>
            <td>$0.87</td>
          </tr>
        </tbody>
      </table>
    </div>
<jsp:include page="./includes/footer.jsp"/>

