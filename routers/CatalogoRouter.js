const express = require("express");
const router = express.Router();
const catalogoControllers = require("../controllers/catalogoControllers");

// Rutas para los catálogos
router.get("/catalogo", catalogoControllers.listarCatalogo);
router.get("/catalogo/:id", catalogoControllers.obtenerCatalogoId);
router.get(
	"/catalogo/nombre/:nombre",
	catalogoControllers.obtenerCatalogoNombre
);
router.get(
	"/catalogo/genero/:genero",
	catalogoControllers.obtenerCatalogoGeneros
);
router.get(
	"/catalogo/categoria/:categoria",
	catalogoControllers.obtenerCatalogoCategorias
);
router.post("/catalogo", catalogoControllers.crearCatalogo);
router.put("/catalogo/:id", catalogoControllers.actualizarCatalogo);
router.delete("/catalogo/:id", catalogoControllers.eliminarCatalogo);

module.exports = router;
