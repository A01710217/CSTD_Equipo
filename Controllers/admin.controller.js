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
    response.render("Configurar_email_admin")
}

exports.get_preguntas = (request, response, next) => {
    response.render("Preguntas_admin")
}

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