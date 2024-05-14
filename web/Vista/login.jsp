<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión - BabyBliss</title>
    </head>
    <body>
        <div>
            <h1>Iniciar Sesión</h1>
            <form action="../srvIniciarSesion?accion=verificar" method="POST">
                <div>
                    <label for="correo">Correo:</label>
                    <input type="email" id="correo" name="txtCorreo" required>
                </div>
                <div>
                    <label for="contrasena">Contraseña:</label>
                    <input type="password" id="contrasena" name="txtClave" required>
                </div>
                <div>
                    <button type="submit">Iniciar Sesión</button>
                </div>
                <%
                    String mensaje = (String)request.getAttribute("mensaje");
                    if (mensaje != null) {
                        out.print("<p style='color: red; text-align: center;'>"+mensaje+"</p>");
                    }
                %>
            </form>
        </div>
    </body>
</html>
