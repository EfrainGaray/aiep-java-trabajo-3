<%-- 
    Document   : _blank.jsp
    Created on : Jul 25, 2020, 1:38:41 PM
    Author     : efraingaray
--%>
<%
    String resp = (String) request.getAttribute("respuestaVenta");
 %>
<jsp:include page="./includes/header.jsp"/>

<div>
    <BR>
     <BR> <BR>
      <BR> <BR>
      
      
      
     
    <%=resp%>
</div>
<jsp:include page="./includes/footer.jsp"/>
