const fs = require("fs");
const readline = require('readline');

const { getColumnNames } = require("./getColumnNames");
const { readLine } = require("./readLine");

const readFile = async (file) => {
	try {
		const columns = await getColumnNames(); // Supongo que esta función devuelve una promesa que resuelve con los nombres de las columnas

		const rl = readline.createInterface({
			input: fs.createReadStream(file.path),
			crlfDelay: Infinity
		});

		const log = await readLine(rl, columns);
		return log;
	} catch (err) {
		console.log(err)
		throw new Error(err)
	}

};


module.exports = { readFile };