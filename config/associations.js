const Categorias = require("../models/Categorias");
const Catalogo = require("../models/Catalogo");
const Generos = require("../models/Generos");
const Actricesyactores = require("../models/Actricesyactores");
const CatalogoGeneros = require("../models/CatalogoGeneros");
const CatalogoReparto = require("../models/CatalogoReparto");

// Relación entre Catalogo y Categorias
Catalogo.belongsTo(Categorias, { foreignKey: "idCategorias" });

// Relación entre Catalogo y Catalogo_generos
Catalogo.belongsToMany(Generos, {
	through: CatalogoGeneros,
	foreignKey: "idCatalogo",
});
Generos.belongsToMany(Catalogo, {
	through: CatalogoGeneros,
	foreignKey: "idGeneros",
});

// Relación entre Catalogo y Catalogo_reparto
Catalogo.belongsToMany(Actricesyactores, {
	through: CatalogoReparto,
	foreignKey: "idCatalogo",
});
Actricesyactores.belongsToMany(Catalogo, {
	through: CatalogoReparto,
	foreignKey: "idActricesyactores",
});

module.exports = {
	Categorias,
	Catalogo,
	Generos,
	Actricesyactores,
	CatalogoGeneros,
	CatalogoReparto,
};
