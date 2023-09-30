const express = require("express");
const app = express();
const { db } = require("./config/db");
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.use(async (req, res, next) => {
	try {
		await db.authenticate();
		next();
	} catch (error) {
		res
			.status(500)
			.json({ error: "Error en el servidor", description: error.message });
	}
});

const CategoriasRouter = require("./routers/CategoriasRouter");
const CatalogoRouter = require("./routers/CatalogoRouter");
const { Sequelize } = require("sequelize");

app.get("/", (req, res) => {
	res
		.status(200)
		.end("Bienvenido a la API de TrailerFlix con MySQL y Sequelize");
});

app.use("/", CategoriasRouter);
app.use("/", CatalogoRouter);

// Iniciar el servidor
app.listen(PORT, () => {
	console.log(`Servidor escuchando en el puerto ${PORT}`);
});
