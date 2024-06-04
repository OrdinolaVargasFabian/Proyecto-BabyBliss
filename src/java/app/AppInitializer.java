/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app;

import javax.servlet.ServletContextListener;
import DAO.ProductoDAO;
import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppInitializer implements ServletContextListener{
    private ProductoDAO prodDAO = new ProductoDAO();
    
    
    @Override
    public void contextInitialized(ServletContextEvent sce){
        sce.getServletContext().setAttribute("producto",prodDAO.ListarTodos());
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce){
        
    }
    
}
