/**Arranca la app
 * Inicia el servidor de express o node */

const app = require("./app");

async function main() {
  await app.listen(3000);
  console.log("Servidor corriendo en el puerto 3000");
}

main();
