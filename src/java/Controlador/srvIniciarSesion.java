package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Modelo.*;

@WebServlet(name = "srvIniciarSesion", urlPatterns = {"/srvIniciarSesion"})
public class srvIniciarSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion = request.getParameter("accion");
        try{
            if(accion!=null){
                switch(accion){
                    case "verificar": VerificarLogin(request,response); break;
                    case "cerrar": CerrarSesion(request,response); break;
                    default: response.sendRedirect("Vista/login.jsp");
                   }                             
            }else{
               response.sendRedirect("Login.jsp"); //regresa al archivo
            }                
        }catch(Exception ex){
            System.out.println("ERROR.."+ex.getMessage());
        } 
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

    private void CerrarSesion(HttpServletRequest request, HttpServletResponse response){
        try{
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario",null);
            sesion.invalidate();
            response.sendRedirect("Vista/login.jsp");
        }catch(Exception ex){
            System.out.println("ERROR al cerrar sesion..."+ex.getMessage());
       }
    }//fin cerrar sesion
    
    private void VerificarLogin(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (request.getParameter("txtCorreo").contains("@babybliss.com")) {
                Especialista esp = new Especialista();
                esp.setNombre("Hugo");
                esp.setAppat("Zapata");
                esp.setApmat("Martinez");
                esp.setCorreo(request.getParameter("txtCorreo"));
                esp.setPassword(request.getParameter("txtClave"));
                if (esp.getCorreo().equals("hzapatam@babybliss.com") && esp.getPassword().equals("456")) {
                    //se crea la sesion
                    HttpSession sesion = request.getSession();
                    //se guarda la informacion del usuario en la sesion
                    sesion.setAttribute("user", esp);
                    //se envia un mensaje para validar el tipo de usuario
                    request.setAttribute("perfil", "Especialista");
                    //se redirecciona a la pagina principal
                    response.sendRedirect("Vista/index.jsp");
                    this.getServletConfig().getServletContext().getRequestDispatcher("/Vista/index.jsp").forward(request, response);
                } else {
                    response.sendRedirect("Vista/login.jsp");
                }
            } else {
                Usuario user = new Usuario();
                user.setNombre("Fabian");
                user.setAppat("Prueba");
                user.setApmat("Sesión");
                user.setCorreo(request.getParameter("txtCorreo"));
                user.setPassword(request.getParameter("txtClave"));
                user.setMembresia("BabyGold");
                if (user.getCorreo().equals("fabian25@gmail.com") && user.getPassword().equals("123")) {
                    //se crea la sesion
                    HttpSession sesion = request.getSession();
                    //se guarda la informacion del usuario en la sesion
                    sesion.setAttribute("user", user);
                    //se envia un mensaje para validar el tipo de usuario
                    request.setAttribute("perfil", "Usuario");
                    //se redirecciona a la pagina principal
                    response.sendRedirect("Vista/index.jsp");
                    this.getServletConfig().getServletContext().getRequestDispatcher("/Vista/index.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensaje", "Credenciales Incorrectas...");
                    response.sendRedirect("Vista/login.jsp");
                }
            }
        } catch (Exception ex) {
            System.out.println("ERROR al verificar sesión..."+ex.getMessage());
        }
    }
}
