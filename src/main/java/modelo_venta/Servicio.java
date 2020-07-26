/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo_venta;

import java.util.ArrayList;
import java.util.Optional;
import javax.ejb.Singleton;

/**
 *
 * @author Henrr
 */
@Singleton
public class Servicio implements ServicioLocal {
    private ArrayList<Producto> listaProducto= new ArrayList();
    public Servicio() {

        Categoria dentrada= new Categoria(1, "Dispositivo de Entrada","Dispositivo optico con conexión USB");
        listaProducto.add(new Producto(1,"Mouse", 3000, 18, dentrada,"mouse.png"));
        
        Categoria dentrada2= new Categoria(2, "Dispositivo de Entrada","Conexión USB");
        listaProducto.add(new Producto(2,"Teclado", 5000, 15, dentrada2,"teclado.png"));
        
        Categoria almacenamiento= new Categoria(3, "Almacenamiento","Conexión USB");
        listaProducto.add(new Producto(3,"Pendrive 8GB", 4000, 10, almacenamiento,"pendrive.png"));
        
        Categoria almacenamiento2= new Categoria(4, "Almacenamiento","Conexión HDMI-USB");
        listaProducto.add(new Producto(4,"HDD Externo 500GB", 50000, 6, almacenamiento2,"disco.png"));
        
        Categoria utilidades= new Categoria(5, "Utilidades","Kit completo para el cuidado del computador");
        listaProducto.add(new Producto(5,"Kit Limpieza", 3000, 20, utilidades,"kit.png"));
        
        Categoria multimedia= new Categoria(6, "Multimdia","Conexión USB");
        listaProducto.add(new Producto(6,"Cámara GoPro HD", 120000, 23, multimedia,"go-pro.png"));
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override   
    public Producto buscarProducto(String codigo) {
        
        for(Producto aux : listaProducto){
            if(codigo.equals(String.valueOf(aux.getCodigo()))){
                return aux;
            }
        }
        return null;
    }

    @Override
    public ArrayList<Producto> getProductos() {
        return listaProducto;
    }

    @Override
    public String vender(String codigo, String cantidad) {
        Producto aux= buscarProducto(codigo);
        for(int i=0; i<=listaProducto.size();i++){
            
            if(Integer.parseInt(codigo)==aux.getCodigo()){
                if(Integer.parseInt(cantidad)<=aux.getStock()){
                    aux.setStock(aux.getStock()-Integer.parseInt(cantidad));
                    return String.valueOf(Integer.parseInt(cantidad)*aux.getPrecio());

                }else{
                    return "No hay stock suficiente";
                }
                
            }
            
        }
        return "Producto no encontrado";
    }

    
}
