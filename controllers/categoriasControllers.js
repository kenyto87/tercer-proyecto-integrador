const { Categorias } = require("../config/associations");

// Controlador para listar todas las categorías
const listarCategorias = async (req, res) => {
	try {
		const categorias = await Categorias.findAll();
		res.json(categorias);
	} catch (error) {
		console.error("Error al listar las categorías:", error);
		res.status(500).json({ error: "Error al listar las categorías" });
	}
};

module.exports = {
	listarCategorias,
};
