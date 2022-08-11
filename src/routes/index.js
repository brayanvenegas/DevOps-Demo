const { Router } = require("express");
const router = Router();

/**Rutas para Rest API */
router.get("/", (req, res) => res.json({ message: "Helo world" }));

module.exports = router;
