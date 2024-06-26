
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg" style="background-color: #9999ff">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="../babybliss_logo.png" alt="Logo" style="width: 100px; height: 30px;"/>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="SHOP.jsp">
                        <i class="fa fa-home"></i>Catálogo
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CarritoControlador?accion=listar">
                        <i class="fa fa-shopping-cart"></i> 
                        (<span class="fw-bold">${sessionScope.carrito != null? sessionScope.carrito.size() : 0}</span>) Carrito
                    </a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
