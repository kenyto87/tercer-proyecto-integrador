const express = require("express");
const router = express.Router();
const categoriasControllers = require("../controllers/categoriasControllers");

// Rutas para las categorías
router.get("/categorias", categoriasControllers.listarCategorias);

module.exports = router;
