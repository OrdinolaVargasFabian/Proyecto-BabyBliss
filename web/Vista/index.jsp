<%@ include file="header.jsp" %> <!-- Incorpora el código del archivo header -->
<link href="../CSS/index.css" rel="stylesheet" type="text/css"/>
<body>
    <!-------------------------------------------- CARRUSEL --------------------------------------------------------------------------------------------->  
    <div id="carouselExampleIndicators" class="carousel slide">
      <h4>�OFERTAS ESPECIALES!</h4>
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="100"> <!-- LINK TIENDA ALIMENTACI�N --> 
             <img src="../IMG/CARRUSEL1.jpg" alt=""/>
        </div>
        <div class="carousel-item" data-bs-interval="100"> <!-- LINK TIENDA COCHES DE BEBE --> 
             <img src="../IMG/CARRUSEL2.jpg" alt=""/>
        </div>
        <div class="carousel-item">
             <img src="../IMG/CARRUSEL3.jpg" alt=""/> <!-- LINK TIENDA COCHES DE BEBE --> 
        </div>
        <div class="carousel-item">
             <img src="../IMG/CARRUSEL4.jpg" alt=""/> <!-- LINK TIENDA GENERAL --> 
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div> 
    <header class="header">
      <!-------------------------------------------- INICIO --------------------------------------------------------------------------------------------->  
      <div class="content">
        <h1>Cuidamos lo que m�s amas</h1>
           <p>
             �Bienvenidos a nuestro rinconcito para beb�s! 
             Aqu� encontrar�s todo lo que necesitas para cuidar, mimar y hacer felices a tus peque�itos. 
             Desde ropa, alimentaci�n y juguetes tiernos hasta accesorios pr�cticos. 
             �Nuestra tienda est� llena de amor y ternura para tu familia! 
             Adelante, descubre el mundo de dulzura que hemos preparado para ti y tu beb�.
           </p>
           <a href="#" class="btn-1">�Descrube quienes somos!</a><!-- LINK DESCRIPCI�N WEB--> 
      </div>
    </header> 
    <!-------------------------------------------- DETALLES ---------------------------------------------------------------------------------------------> 
    <div class="det">
        <!-- ICONO GARANTIA --> 
        <div class="garantia">
            <i class='bx bxs-medal' ></i>
            <h2>Garant�a de 6 meses</h2>
            <p>Aplican condiciones</p>
        </div>
        <!-- ICONO PAGO SEGURO --> 
        <div class="pago">
            <i class='bx bxs-baby-carriage'></i>
            <h2>Pago seguro</h2>
            <p>Todos los medios de pago</p>
        </div>
    </div>
    <!-------------------------------------------- GUIAS --------------------------------------------------------------------------------------------->  
    <!-------------------------------------------- ALIMENTACI�N------------------------------------------------------------------------------------------> 
    <div class="guias">   
        <div class="guiaAl"> 
            <h3>Guias redactadas por nuestros especialistas</h3>
            <img src="../IMG/BANNER_GUIA_ALIMENTACION.jpg" alt=""/>
            <p>GUIAS DE ALIMENTACI�N</p>
        </div>
        <!-- GUIA 1 --> 
        <div class="Al-1">
             <img src="../IMG/GUIA_ALIMENTACION1.jpg" class="rounded float-start" alt=""/>
             <h3>Guia Alimentaci�n Complementaria 6-12 a�os</h3>
             <p>Esta gu�a proporciona informaci�n esencial para padres y cuidadores 
               sobre c�mo introducir una variedad de alimentos saludables en la dieta de un beb� en desarrollo.</p>
        </div>
        <!-- GUIA 2 --> 
        <div class="Al-2">
             <img src="../IMG/GUIA_ALIMENTACION2.jpg" class="rounded float-end" alt=""/>
             <h3>Guia Alimentaci�n Complementaria Saludable</h3>
             <p>La gu�a de alimentaci�n saludable aborda la introducci�n gradual de alimentos s�lidos,
                tambi�n incluye consejos sobre la preparaci�n segura de alimentos, la textura adecuada seg�n la etapa del beb�, 
                la frecuencia de las comidas y se�ales de hambre/saciedad.</p>
        </div>
    </div>    
 
    <!-------------------------------------------- ACCESO DIRECTO TIENDA --------------------------------------------------------------------------------------------->  

</body>
<%@ include file="footer.jsp" %> <!-- Incorpora el código del archivo footer -->
