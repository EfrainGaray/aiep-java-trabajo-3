/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo_venta;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Henrr
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Productos"})
public class Controlador extends HttpServlet {

    @EJB
    private ServicioLocal servicio;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String opcion = request.getParameter("page");

        switch (opcion) {
            case "ver":
                buscarProducto(request, response);
                break;
            case "comprar":
                confirmacionVenta(request, response);
                break;

        }

    }
    
     protected void buscarProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String codigo = request.getParameter("codigo");
        
        Producto aux= servicio.buscarProducto(codigo);

        if (aux == null) {
            request.setAttribute("msg", "<div class='chip'>Producto no encontrado<i class='close material-icons'>close</i></div>");
        } else {
            request.setAttribute("Producto", aux);
        }
        request.getRequestDispatcher("detalleVenta.jsp").forward(request, response);

    }
    
    protected void confirmacionVenta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String codigo = request.getParameter("codigo");
        String cantidad= request.getParameter("cantidad");
        String respuesta=servicio.vender(codigo, cantidad);

        if (respuesta.equals("Producto no encontrado")) {
            request.setAttribute("msg", "<div class='chip'>Producto no encontrado<i class='close material-icons'>close</i></div>");
        }else if(respuesta.equals("No hay stock suficiente")){
            request.setAttribute("msg", "<div class='chip'>No hay stock suficiente<i class='close material-icons'>close</i></div>");
        } 
        else {
            request.setAttribute("respuestaVenta", respuesta);
        }
        request.getRequestDispatcher("detalleVenta.jsp").forward(request, response);

    }
    


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
