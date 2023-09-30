const Sequelize = require("sequelize");
const { db } = require("../config/db");

const CatalogoGeneros = db.define(
	"CatalogoGeneros",
	{
		idCatalogo_generos: {
			type: Sequelize.INTEGER,
			primaryKey: true,
			autoIncrement: true,
			allowNull: false,
		},

		idCatalogo: {
			type: Sequelize.INTEGER,
			allowNull: false,
		},
		idGeneros: {
			type: Sequelize.INTEGER,
			allowNull: false,
		},
	},
	{ tableName: "catalogo_generos", timestamps: false }
);

module.exports = CatalogoGeneros;
