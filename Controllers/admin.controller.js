const Marca = require('../models/marca.model');
const Pregunta = require('../models/pregunta.model');
const Opcion = require('../models/opcion.model');
const Tipo = require('../models/tipo.model');

exports.get_root = (request, response, next) => {
    response.render("Home_admin")
}

exports.get_analitico = (request, response, next) => {
    response.render("Analitico_admin")
}

exports.get_resenia = (request, response, next) => {
    response.render("Resenia_admin")
}

exports.get_configurar_email = (request, response, next) => {
    Marca.fetchAll().then(([rows, fieldData]) => {
        response.render("marcas", {
            marcas: rows, 
            configurar_email: true,
        })
    })
    .catch((error) => {
        console.log(error);
    });
}

exports.get_preguntas_marca = (request, response, next) => {
    Pregunta.fetchByMarca(request.params.marca_id).then(([preguntas, fieldData]) => {
        Opcion.fetchByMarca(request.params.marca_id).then(([opciones, fieldData]) => {
            //console.log(preguntas);
            //console.log(opciones);
            response.render("preguntas", {
                preguntas: preguntas,
                opciones: opciones,
                marca_id: request.params.marca_id
            });
        }).catch((error) => {
            console.log(error);
        });
    }).catch((error) => {
        console.log(error);
    });
}

exports.get_crear_pregunta = (request, response, next) => {
    Tipo.fetchAll().then(([tipos, fieldData]) => {
        response.render("crear_pregunta", {
            tipos: tipos,
            marca_id: request.params.marca_id
        });
    }).catch((error) => {
        console.log(error);
    });
};
exports.post_crear_pregunta = (request, response, next) => {
    Tipo.fetchOne(request.body.pregunta_tipo).then(([tipo, fieldData]) => {
        request.body.pregunta_obligatoria === "on" ? pregunta_obligatoria = 1 : pregunta_obligatoria = 0;
        //Crear la pregunta
        let pregunta = new Pregunta(request.params.marca_id, request.body.pregunta_texto, tipo[0].idtipo, pregunta_obligatoria);
        //Guardar la pregunta en la base de datos
        pregunta.save().then(() => {
            Pregunta.fetchByDate().then(([preguntas, fieldData]) => {
                for (let opcion of request.body.pregunta_opcion) {
                    let nueva_opcion = new Opcion(preguntas[0].idpregunta, opcion);
                    nueva_opcion.save();
                }
                response.redirect("/admin/configurar_email/preguntas/" + request.params.marca_id);
            }).catch((error) => {
                console.log(error);
            });
        }).catch((error) => {
            console.log(error);
        });
    }).catch((error) => {
        console.log(error);
    });
    //let pregunta = new Pregunta(request.params.marca_id, request.body.pregunta_texto, request.body.idtipo, request.body.statusobligatorio);
};

exports.get_usuario = (request, response, next) => {
    response.render("Usuarios_admin")
}

exports.get_dar_alta = (request, response, next) => {
    response.render("Dar_alta_admin")
}

exports.get_roles = (request, response, next) => {
    response.render("Roles_admin")
}

exports.get_roles_admin = (request, response, next) => {
    response.render("Roles_admin_admin")
}

exports.get_roles_analitico = (request, response, next) => {
    response.render("Roles_analitico_admin")
}

exports.get_roles_crm = (request, response, next) => {
    response.render("Roles_crm_admin")
}