<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--JQuery--%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <%--Bootstrap--%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <%--CSS Tablas Dinamicas--%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/2.0.5/css/dataTables.bootstrap5.css"/>

        <%--JS Tablas Dinamicas--%>
        <script defer src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
        <script defer src="https://cdn.datatables.net/2.0.5/js/dataTables.js"></script>
        <script defer src="https://cdn.datatables.net/2.0.5/js/dataTables.bootstrap5.js"></script>

        <%--Iconos--%>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

        <%--Pop Ups--%>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <%--Fuentes de letra--%>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Yellowtail&display=swap" rel="stylesheet">

        <link rel="icon" type="image/x-icon" href="../babybliss_logo.png">

        <title>BabyBliss</title>
    </head>
    <body style="background: linear-gradient(to right, lightcyan, lightpink); padding-top: 12%;">
        <div class="fixed-top">
            <%--Barra principal--%>
            <div class="d-flex justify-content-between align-items-center p-2" style="background: linear-gradient(to right, #C99FF4, #EDCEE9);">
                <%--Logo de BabyBliss--%>
                <a href="index.jsp" class="d-flex align-items-center" style="text-decoration: none; color: black;">
                    <img src="../babybliss_logo.png" alt="BabyBliss" style="width: 70px">
                    <h2 class="ms-3" style='font-family: "Yellowtail", cursive; font-size: 50px;'>BabyBliss</h2>
                </a>
            
                <div class="d-inline-flex gap-5 align-items-center">
                    <%--Menu desplegable de carrito de compras--%>
                    <div class="dropdown">
                        <a class="btn rounded-pill btn-icon btn-secondary float-end" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class='bx bxs-baby-carriage' style="font-size: 20px;"></i>
                        </a>
                        <ul class="text-center dropdown-menu" style="width: 200px">
                            <li>VACIO</li>
                        </ul>
                    </div>
                    <%--Menu desplegable de notificaciones--%>
                    <div class="dropdown">
                        <a class="btn rounded-pill btn-icon btn-secondary float-end" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class='bx bxs-bell' style="font-size: 20px;"></i>
                        </a>
                        <ul class="text-center dropdown-menu" style="width: 200px">
                            <li>NO TIENES NOTIFICACIONES PENDIENTES</li>
                        </ul>
                    </div>
                    <%--Menu de usuario desplegable--%>
                    <div class="dropdown">
                        <a href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="../default.png" alt="" style="width: 50px" class="rounded-circle">
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" data-bs-toggle="offcanvas" href="#offcanvasMiPerfil" role="button" aria-controls="offcanvasMiPerfil"><i class='bx bxs-user-circle me-2'></i>Mi cuenta</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#"><i class='bx bxs-crown me-2'></i>Suscribirse</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#"><i class='bx bx-log-out me-2'></i>Cerrar Sesión</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <%@ include file="../componentes/usuario/offcanvasDetallesUsuario.jsp" %> <!-- Incorpora el código del offcanvas para ver los datos del usuario -->
            <%--Barra de navegacion--%>
            <ul class="nav justify-content-center nav-pills nav-fill p-3 bg-white">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp"><i class='bx bxs-home me-2'></i>Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="comunidad.jsp"><i class='bx bxs-group me-2'></i>Comunidad de apoyo</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class='bx bxs-store me-2'></i>Tienda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class='bx bxs-calendar me-2'></i>Calendario</a>
                </li>
                <%--Opción exclusiva para los usuarios premium--%>
                <li class="nav-item">
                    <a class="nav-link" href="programarReunion.jsp"><i class='bx bxs-calendar-plus me-2'></i>Programar Reunion</a>
                </li>
            </ul>
        </div>
