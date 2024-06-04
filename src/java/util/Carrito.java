/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import Modelo.DetallePedido;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class Carrito {
    //metodo agregar carrito
    public void AgregarCarrito(DetallePedido detalle, HttpServletRequest request){
        ArrayList<DetallePedido> lista = ObtenerSesion(request);
        int posc = ExisteProducto(lista, detalle.getProducto().getId());
        
        if(posc ==-1){ //Si el producto no existe
            lista.add(detalle);
        }else{
            DetallePedido objDet = lista.get(posc);//obtenemos del producto encontrado
            objDet.AumentarCantidad(detalle.getCantidad());
            lista.set(posc, objDet);
        }
        GuardarSesion(request, lista);
    }
    
    public double ImporteTotal(ArrayList<DetallePedido> lista){
        double total = 0;
        for(DetallePedido item : lista){
            total += item.Importe();        
        }
        return total;
    }
    
    public void RemoverItemCarrito(HttpServletRequest request, int indice){
        ArrayList<DetallePedido> lista = ObtenerSesion(request);
        lista.remove(indice);
        GuardarSesion(request, lista);
    }
    
    
    //obtener sesion
    public ArrayList<DetallePedido> ObtenerSesion(HttpServletRequest request){
        ArrayList<DetallePedido> lista;
        
        if(request.getSession().getAttribute("carrito") == null){
            lista = new ArrayList<>();
        }else{
            lista = (ArrayList<DetallePedido>) request.getSession().getAttribute("carrito");
            
        }
        return lista;
    }
    
    //metodo para guardar sesion 
    public void GuardarSesion(HttpServletRequest request, ArrayList<DetallePedido> lista){
        request.getSession().setAttribute("carrito", request);
    }
    //metodo para buscar si el producto existe en el carrito
    public int ExisteProducto(ArrayList<DetallePedido> lista, int id){
        for(int i= 0; i < lista.size();i++){
            if(lista.get(i).getProducto().getId()== id){
                return i;
            }
        }
        return -1;
    }
}
