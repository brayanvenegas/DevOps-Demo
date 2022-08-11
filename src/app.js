/**Código del servidor
 *
 * Requerimientos
 * Se utiliza express para configurarlo */
const express = require("express");
const morgan = require("morgan");

/**Función para ejecutar servidor */
const app = express();

app.use(morgan("dev"));
app.use(require("./routes/index"));

/**Se exporta para ejecutarlo en index.js */
module.exports = app;
