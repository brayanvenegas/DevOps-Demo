const { Router } = require("express");
const router = Router();

/**Rutas para Rest API */
router.get("/", (req, res) => res.json({ message: "Funcionando" }));

module.exports = router;
