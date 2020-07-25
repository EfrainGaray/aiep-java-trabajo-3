/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo_venta;

import java.util.ArrayList;
import javax.ejb.Local;

/**
 *
 * @author Henrr
 */
@Local
public interface ServicioLocal {

    Producto buscarProducto(String codigo);

    ArrayList<Producto> getProductos();

    String vender(String codigo, String cantidad);
    
}
