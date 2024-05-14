const express = require("express");
const upload = require("../../middlewares/multer.config");
const { readFile } = require("../../Utils/readFile");

const router = express.Router();

router.post("/upload", upload.single("file"), async (request, response) => {
	try {
		const uploadedFile = request.file;

		if (!uploadedFile) {
		  throw new Error("Error procesando el archivo");
		}

		const data = await readFile(uploadedFile);
		console.log("data:", data);

		// return response.json({Status: "Success", message: `Hola: ${data.addedRows}`});

	} catch (err) {
		return response.status(500).json({Error: err.message});
	}
})


module.exports = router;
