const Sequelize = require("sequelize");
const { db } = require("../config/db");

const Generos = db.define(
	"Generos",
	{
		idGeneros: {
			type: Sequelize.INTEGER,
			primaryKey: true,
			autoIncrement: true,
			allowNull: false,
		},

		nombre: {
			type: Sequelize.STRING(100),
			allowNull: false,
		},
	},
	{ tableName: "generos", timestamps: false }
);

module.exports = Generos;
