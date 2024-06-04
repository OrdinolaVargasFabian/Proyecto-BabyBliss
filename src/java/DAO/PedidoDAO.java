/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Persistencia.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Modelo.Pedido;
import java.sql.Statement;
import Modelo.DetallePedido;
import java.sql.SQLException;


public class PedidoDAO {
    private Connection cn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public int GenerarPedido(Pedido obj){
        int result = 0;
        try {
            cn = Conexion.getConnection();
            cn.setAutoCommit(false);//desabilitar 
            String sql = "INSERT INTO Pedido(id_usu, fecha_ped, total, estado) VALUES(?, NOW(), ?,?)";
            ps = cn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, obj.getCliente().getId());
            ps.setDouble(2, obj.getTotal());
            ps.setString(3, obj.getEstado());
            result = ps.executeUpdate();
            
            if(result > 0){
                rs= ps.getGeneratedKeys();
                
                if(rs.next()){
                    int idPed = rs.getInt(1);
                    
                    ps = cn.prepareStatement("INSERT INTO Detalle_Pedido"
                    + "(id_ped, id_prod, precio, cantidad) VALUES(?,?,?,?)");
                    for(DetallePedido carrito: obj.getDetalles()){
                        ps.setInt(1, idPed);
                        ps.setInt(2, carrito.getProducto().getId());
                        ps.setDouble(3, carrito.getProducto().getPrecio());
                        ps.setInt(4, carrito.getCantidad());
                        ps.executeUpdate();
                    }
                    cn.commit();//guardar cambios
                }
                
            }
        }catch(Exception e){
            try {
                if(cn != null){
                    cn.rollback();
                    result =0;
                }
            }catch (SQLException exl){
                
            }
            
            e.printStackTrace();
            
        }finally{
            try{
                if(cn != null){
                    cn.close();
                }
                if(ps != null){
                    ps.close();
                }
                if(rs != null){
                    rs.close();
                }
                
            }catch(Exception e){
                
            }
            
        }
        return result;
    }
}
