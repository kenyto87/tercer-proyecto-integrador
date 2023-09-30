const Sequelize = require("sequelize");
const { db } = require("../config/db");

const Actricesyactores = db.define(
	"Actricesyactores",
	{
		idActricesyactores: {
			type: Sequelize.INTEGER,
			primaryKey: true,
			autoIncrement: true,
			allowNull: false,
		},

		nombreyapellido: {
			type: Sequelize.STRING(100),
			allowNull: false,
		},
	},
	{ tableName: "actricesyactores", timestamps: false }
);

module.exports = Actricesyactores;
