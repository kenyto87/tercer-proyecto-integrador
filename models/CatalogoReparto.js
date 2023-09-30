const Sequelize = require("sequelize");
const { db } = require("../config/db");

const CatalogoReparto = db.define(
	"CatalogoReparto",
	{
		idCatalogo_reparto: {
			type: Sequelize.INTEGER,
			primaryKey: true,
			autoIncrement: true,
			allowNull: false,
		},

		idCatalogo: {
			type: Sequelize.INTEGER,
			allowNull: false,
		},
		idActricesyactores: {
			type: Sequelize.INTEGER,
			allowNull: false,
		},
	},
	{ tableName: "catalogo_reparto", timestamps: false }
);

module.exports = CatalogoReparto;
