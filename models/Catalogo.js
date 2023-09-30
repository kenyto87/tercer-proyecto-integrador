const Sequelize = require("sequelize");
const { db } = require("../config/db");

const Catalogo = db.define(
	"Catalogo",
	{
		idCatalogo: {
			type: Sequelize.INTEGER,
			primaryKey: true,
			autoIncrement: true,
			allowNull: false,
		},
		poster: {
			type: Sequelize.STRING(100),
			allowNull: false,
		},
		titulo: {
			type: Sequelize.STRING(100),
			allowNull: false,
		},
		idCategorias: {
			type: Sequelize.INTEGER,
			allowNull: false,
		},

		resumen: {
			type: Sequelize.TEXT,
			allowNull: false,
		},
		temporadas: {
			type: Sequelize.STRING(45),
			allowNull: false,
		},
		trailer: {
			type: Sequelize.STRING(100),
			allowNull: false,
		},
	},
	{ tableName: "catalogo", timestamps: false }
);

module.exports = Catalogo;
