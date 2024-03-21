const agregarOpcion = document.getElementById("agregar_opcion");
const opcionesContenedor = document.getElementById("opciones_contenedor");

agregarOpcion.addEventListener("click", function() {

    const div = `
    <div class="field">
        <div class="control">
        <input class="input mt-3 input preguntas_main_block" id="pregunta_opcion" name="pregunta_opcion" type="text" placeholder="Escribe la opción...">
        </div>
    </div>
    `;

    opcionesContenedor.insertAdjacentHTML("beforeend", div)

});