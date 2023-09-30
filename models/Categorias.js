const Sequelize = require("sequelize");
const { db } = require("../config/db");

const Categorias = db.define(
	"Categorias",
	{
		idCategorias: {
			type: Sequelize.INTEGER,
			primaryKey: true,
			autoIncrement: true,
			allowNull: false,
		},
		nombre: {
			type: Sequelize.STRING(45),
			allowNull: false,
		},
	},
	{ tableName: "categorias", timestamps: false }
);

module.exports = Categorias;
