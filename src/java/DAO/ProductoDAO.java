/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import Persistencia.Conexion;

public class ProductoDAO {

    private Connection cn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public ArrayList<Producto> ListarTodos() {
        ArrayList<Producto> lista = new ArrayList<Producto>();

        try {
            cn = Conexion.getConnection();
            String sql = "*select * from Producto";
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Producto obj = new Producto();
                obj.setId(rs.getInt("idProducto"));
                obj.setNombre(rs.getString("nombre"));
                obj.setDescripcion(rs.getString("descripcion"));
                obj.setPrecio(rs.getDouble("precio"));
                obj.setStock(rs.getInt("stock"));
                obj.setImagen(rs.getString("imagen"));
                obj.setCategoria(rs.getString("categoria"));
                lista.add(obj);
            }
        } catch (Exception e) {
            //cerrar la cadena de conexion
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return lista;
    }
    
    public Producto BuscarPorId(int id) {
        Producto obj = null;

        try {
            cn = Conexion.getConnection();
            String sql = "*select * from Producto";
            ps = cn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                obj = new Producto();
                obj.setId(rs.getInt("idProducto"));
                obj.setNombre(rs.getString("nombre"));
                obj.setDescripcion(rs.getString("descripcion"));
                obj.setPrecio(rs.getDouble("precio"));
                obj.setStock(rs.getInt("stock"));
                obj.setImagen(rs.getString("imagen"));
                obj.setCategoria(rs.getString("categoria"));               
            }
        } catch (Exception e) {
            //cerrar la cadena de conexion
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return obj;
    }
}
