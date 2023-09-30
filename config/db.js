const Sequelize = require("sequelize");
const dotenv = require("dotenv");
dotenv.config();

const { DB_SCHEMA, DB_USER, DB_PASSWORD, DB_HOST } = process.env;

const db = new Sequelize(DB_SCHEMA, DB_USER, DB_PASSWORD, {
	host: DB_HOST,
	dialect: "mysql",
});

module.exports = { db };
