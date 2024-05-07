<%@ include file="header.jsp" %> <!-- Incorpora el código del archivo header -->
<div class="container bg-white rounded shadow p-5">
    <ul class="nav nav-pills mb-3" id="pills-tab-reunion" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="pills-RPresencial-tab" data-bs-toggle="pill" data-bs-target="#pills-RPresencial" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Reunion Presencial</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="pills-RRemota-tab" data-bs-toggle="pill" data-bs-target="#pills-RRemota" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Reunion Remota</button>
        </li>
    </ul>
    <hr>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-RPresencial" role="tabpanel" aria-labelledby="pills-RPresencial-tab" tabindex="0">
            <form action="" method="post" onsubmit="return false">
                <div class="mb-3">
                    <label for="inputNombre" class="form-label">Nombre de la reunion</label>
                    <input type="text" class="form-control" id="inputNombre" name="nombreReunion">
                </div>
                <div class="mb-3">
                    <label for="inputFecha" class="form-label">Fecha de la reunion</label>
                    <input type="date" class="form-control" id="inputFecha" name="fechaReunion">
                </div>
                <div class="mb-3">
                    <label for="inputHora" class="form-label">Hora de la reunion</label>
                    <input type="time" class="form-control" id="inputHora" name="horaReunion">
                </div>
                <div class="mb-3">
                    <label for="inputLugar" class="form-label">Lugar de la reunion</label>
                    <select class="form-select" id="inputLugar" name="lugarReunion">
                        <option selected>Selecciona un lugar</option>
                        <option value="1">Clinica 1</option>
                        <option value="2">Clinica 2</option>
                        <option value="3">Clinica 3</option>
                        <option value="4">Otro</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="inputEspDispo" class="form-label">Especialistas disponibles</label>
                    <select class="form-select" id="inputEspDispo" name="especialistaDisponible">
                        <option selected>Selecciona un especialista</option>
                        <option value="1">Pediatra 1</option>
                        <option value="2">Pediatra 2</option>
                        <option value="3">Pediatra 3</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="inputTema" class="form-label">Tema de la reunion</label>
                    <textarea class="form-control" id="inputTema" name="temaReunion" rows="3"></textarea>
                </div>
                <button onclick="agregarReunionPresencial()" class="btn btn-primary">Programar Reunion</button>
            </form>
        </div>
        <div class="tab-pane fade" id="pills-RRemota" role="tabpanel" aria-labelledby="pills-RRemota-tab" tabindex="0">
            <form action="" method="post" onsubmit="return false">
                <div class="mb-3">
                    <label for="inputNombre" class="form-label">Nombre de la reunion</label>
                    <input type="text" class="form-control" id="inputNombre" name="nombreReunion">
                </div>
                <div class="mb-3">
                    <label for="inputFecha" class="form-label">Fecha de la reunion</label>
                    <input type="date" class="form-control" id="inputFecha" name="fechaReunion">
                </div>
                <div class="mb-3">
                    <label for="inputHora" class="form-label">Hora de la reunion</label>
                    <input type="time" class="form-control" id="inputHora" name="horaReunion">
                </div>
                <div class="mb-3">
                    <label for="inputEspDispo" class="form-label">Especialistas disponibles</label>
                    <select class="form-select" id="inputEspDispo" name="especialistaDisponible">
                        <option selected>Selecciona un especialista</option>
                        <option value="1">Pediatra 1</option>
                        <option value="2">Pediatra 2</option>
                        <option value="3">Pediatra 3</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="inputTema" class="form-label">Tema de la reunion</label>
                    <textarea class="form-control" id="inputTema" name="temaReunion" rows="3"></textarea>
                </div>
                <p class="text-danger">La reunion remota se llevara a cabo mediante la plataforma de videollamadas Zoom, se le asignará el link de invitación despues de concluir la programacion.</p>
                <button onclick="agregarReunionRemota()" class="btn btn-primary">Programar Reunion</button>
            </form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %> <!-- Incorpora el código del archivo footer -->
<script>
    function agregarReunionPresencial(){
        swal.fire({
            title: 'Reunion programada',
            text: 'La reunion ha sido programada exitosamente',
            icon: 'success',
            confirmButtonText: 'Aceptar'
        });
    }

    function agregarReunionRemota(){
        swal.fire({
            title: 'Reunion programada',
            text: 'La reunion ha sido programada exitosamente',
            icon: 'success',
            confirmButtonText: 'Aceptar'
        });
    }
</script>