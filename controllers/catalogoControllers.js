const {
	Catalogo,
	Categorias,
	Generos,
	Actricesyactores,
	CatalogoGeneros,
	CatalogoReparto,
} = require("../config/associations");
const { Op } = require("sequelize");
// Controlador para listar todas los catálogos
const listarCatalogo = async (req, res) => {
	const baseUrl = req.protocol + "://" + req.get("host") + "/src";
	try {
		const catalogoInclude = await Catalogo.findAll({
			attributes: ["idCatalogo", "poster", "titulo", "resumen", "temporadas"],
			include: [
				{
					model: Categorias,
					attributes: ["nombre"],
				},
				{
					model: Generos,
					attributes: ["nombre"],
				},
				{
					model: Actricesyactores,
					attributes: ["nombreyapellido"],
					through: {
						model: CatalogoReparto,
					},
				},
			],
		});
		//Formateo para una salida especica en json
		const catalogo = catalogoInclude.map((item) => ({
			id: item.idCatalogo,
			poster: `${baseUrl}${item.poster}`,
			titulo: item.titulo,
			categoria: item.Categoria.nombre,
			genero: item.Generos.map((genero) => genero.nombre).join(", "),
			resumen: item.resumen,
			temporadas: item.temporadas,
			reparto: item.Actricesyactores.map((actor) => actor.nombreyapellido).join(
				", "
			),
		}));
		res.json(catalogo);
	} catch (error) {
		console.error("Error al listar los catálogos:", error);
		res.status(500).json({ error: "Error al listar los catálogos" });
	}
};
//Controlador para obtener una catalogo por su ID
const obtenerCatalogoId = async (req, res) => {
	const catalogoId = req.params.id;
	try {
		const catalogoInclude = await Catalogo.findByPk(catalogoId, {
			attributes: ["idCatalogo", "poster", "titulo", "resumen", "temporadas"],
			include: [
				{
					model: Categorias,
					attributes: ["nombre"],
				},
				{
					model: Generos,
					attributes: ["nombre"],
				},
				{
					model: Actricesyactores,
					attributes: ["nombreyapellido"],
					through: {
						model: CatalogoReparto,
					},
				},
			],
		});
		const catalogo = {
			id: catalogoInclude.idCatalogo,
			poster: `/posters/${catalogoInclude.poster}`,
			titulo: catalogoInclude.titulo,
			categoria: catalogoInclude.Categoria.nombre,
			genero: catalogoInclude.Generos.map((genero) => genero.nombre).join(", "),
			resumen: catalogoInclude.resumen,
			temporadas: catalogoInclude.temporadas,
			reparto: catalogoInclude.Actricesyactores.map(
				(actor) => actor.nombreyapellido
			).join(", "),
		};

		res.json(catalogo);
	} catch (error) {
		console.error("Error al obtener el catálogo por id:", error);
		res.status(500).json({ error: "Error al obtener el catálogo por id" });
	}
};
//Controlador para obtener una catalogo por el nombre o parte del nombre
const obtenerCatalogoNombre = async (req, res) => {
	const { nombre } = req.params;
	try {
		const catalogoInclude = await Catalogo.findAll({
			where: {
				titulo: {
					[Op.like]: `%${nombre}%`, // Búsqueda insensible a mayúsculas y minúsculas
				},
			},
			attributes: ["idCatalogo", "poster", "titulo", "resumen", "temporadas"],
			include: [
				{
					model: Categorias,
					attributes: ["nombre"],
				},
				{
					model: Generos,
					attributes: ["nombre"],
				},
				{
					model: Actricesyactores,
					attributes: ["nombreyapellido"],
					through: {
						model: CatalogoReparto,
					},
				},
			],
		});
		const catalogo = catalogoInclude.map((item) => ({
			id: item.idCatalogo,
			poster: `/posters/${item.poster}`,
			titulo: item.titulo,
			categoria: item.Categoria.nombre,
			genero: item.Generos.map((genero) => genero.nombre).join(", "),
			resumen: item.resumen,
			temporadas: item.temporadas,
			reparto: item.Actricesyactores.map((actor) => actor.nombreyapellido).join(
				", "
			),
		}));
		res.json(catalogo);
	} catch (error) {
		console.error("Error al obtener el catálogo por nombre:", error);
		res.status(500).json({ error: "Error al obtener el catálogo por nombre" });
	}
};
// Controlador para listar todas los catálogos por generos
const obtenerCatalogoGeneros = async (req, res) => {
	const genero = req.params.genero;
	try {
		const catalogoInclude = await Catalogo.findAll({
			include: [
				{
					model: Generos,
					attributes: [],
					where: {
						nombre: genero,
					},
				},
				{
					model: Categorias,
					attributes: ["nombre"],
				},
				{
					model: Actricesyactores,
					attributes: ["nombreyapellido"],
					through: {
						model: CatalogoReparto,
					},
				},
			],

			attributes: ["idCatalogo", "poster", "titulo", "resumen", "temporadas"],
		});
		const catalogo = catalogoInclude.map((item) => ({
			id: item.idCatalogo,
			poster: `/posters/${item.poster}`,
			titulo: item.titulo,
			categoria: item.Categoria.nombre,
			genero: genero,
			resumen: item.resumen,
			temporadas: item.temporadas,
			reparto: item.Actricesyactores.map((actor) => actor.nombreyapellido).join(
				", "
			),
		}));
		res.json(catalogo);
	} catch (error) {
		console.error("Error al obtener el catálogo por géneros:", error);
		res.status(500).json({ error: "Error al obtener por géneros" });
	}
};
// Controlador para listar todas los catálogos por categorias
const obtenerCatalogoCategorias = async (req, res) => {
	const categoria = req.params.categoria;
	try {
		const catalogoInclude = await Catalogo.findAll({
			include: [
				{
					model: Categorias,
					attributes: [],
					where: {
						nombre: categoria,
					},
				},
				{
					model: Generos,
					attributes: ["nombre"],
				},
				{
					model: Actricesyactores,
					attributes: ["nombreyapellido"],
					through: {
						model: CatalogoReparto,
					},
				},
			],

			attributes: ["idCatalogo", "poster", "titulo", "resumen", "temporadas"],
		});
		const catalogo = catalogoInclude.map((item) => ({
			id: item.idCatalogo,
			poster: `/posters/${item.poster}`,
			titulo: item.titulo,
			categoria: categoria,
			genero: item.Generos.map((genero) => genero.nombre).join(", "),
			resumen: item.resumen,
			temporadas: item.temporadas,
			reparto: item.Actricesyactores.map((actor) => actor.nombreyapellido).join(
				", "
			),
		}));
		res.json(catalogo);
	} catch (error) {
		console.error("Error al obtener el catálogo por categoría:", error);
		res.status(500).json({ error: "Error al obtener por categoría" });
	}
};
// Controlador para crear un nuevo catátlogo
const crearCatalogo = async (req, res) => {
	try {
		const {
			poster,
			titulo,
			idCategorias,
			resumen,
			temporadas,
			trailer,
			generos,
			actores,
		} = req.body;

		// Primero, crea en nuevo catálogo en la tabla `catalogo`
		const nuevoCatalogo = await Catalogo.create({
			poster,
			titulo,
			idCategorias,
			resumen,
			temporadas,
			trailer,
		});

		const idCatalogo = nuevoCatalogo.idCatalogo; // Obtiene el `idCatalogo` generado

		// Luego, agrega los géneros asociados a la película en la tabla `catalogo_generos`
		for (const idGenero of generos) {
			await CatalogoGeneros.create({ idCatalogo, idGeneros: idGenero });
		}

		// Finalmente, agrega los actores asociados a la película en la tabla `catalogo_reparto`
		for (const idActor of actores) {
			await CatalogoReparto.create({ idCatalogo, idActricesyactores: idActor });
		}

		res.status(201).json({ message: "Catálogo agregado con éxito" });
	} catch (error) {
		console.error("Error al crear catálogo", error);
		res.status(500).json({ error: "Error al crear catálogo" });
	}
};
// Controlador para actualizar un catálogo por su ID
const actualizarCatalogo = async (req, res) => {
	const id = req.params.id;
	const { poster, titulo, idCategorias, resumen, temporadas, trailer } =
		req.body;
	try {
		const catalogo = await Catalogo.findByPk(id);
		if (!catalogo) {
			res.status(404).json({ error: "Catalogo no encontrado" });
			return;
		}

		await catalogo.update({
			poster,
			titulo,
			idCategorias,
			resumen,
			temporadas,
			trailer,
		});

		res.json(catalogo);
	} catch (error) {
		console.error("Error al actualizar catálogo", error);
		res.status(500).json({ error: "Error al actualizar catalogo" });
	}
};
// Controlador para eliminar un catálogo por su ID
const eliminarCatalogo = async (req, res) => {
	const { id } = req.params;
	try {
		const catalogo = await Catalogo.findByPk(id);
		if (!catalogo) {
			res.status(404).json({ error: "Catalogo no encontrado" });
			return;
		}
		// Primero, elimina los registros en la tabla CatalogoGenero relacionados con el idCatalogo
		await CatalogoGeneros.destroy({ where: { idCatalogo: id } });

		// Luego, elimina los registros en la tabla CatalogoReparto relacionados con el idCatalogo
		await CatalogoReparto.destroy({ where: { idCatalogo: id } });
		await catalogo.destroy();
		res.json({ mensaje: "Catalog eliminado con éxito" });
	} catch (error) {
		console.error("Error al eliminar catálogo", error);
		res.status(500).json({ error: "Error al eliminar catálogo" });
	}
};

module.exports = {
	listarCatalogo,
	obtenerCatalogoId,
	obtenerCatalogoNombre,
	obtenerCatalogoGeneros,
	obtenerCatalogoCategorias,
	crearCatalogo,
	actualizarCatalogo,
	eliminarCatalogo,
};
