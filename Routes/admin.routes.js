const express = require("express")
const router = express.Router()

const controller = require("../controllers/admin.controller")

router.get("/configurar_email/crear-pregunta/:marca_id", controller.get_crear_pregunta);
router.post("/configurar_email/crear-pregunta/:marca_id", controller.post_crear_pregunta);
router.get("/configurar_email/preguntas/:marca_id", controller.get_preguntas_marca);
router.get("/configurar_email", controller.get_configurar_email);
router.get("/roles", controller.get_roles);
router.get("/roles/admin", controller.get_roles_admin);
router.get("/roles/analitico", controller.get_roles_analitico);
router.get("/roles/crm", controller.get_roles_crm);

router.get("/resenia", controller.get_resenia);
router.get("/analitico", controller.get_analitico);
router.get("/usuarios", controller.get_usuario);
router.get("/dar_de_alta_usuarios", controller.get_dar_alta);

router.get("/", controller.get_root);

module.exports = router