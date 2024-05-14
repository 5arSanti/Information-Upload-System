const fs = require("fs");
const readline = require('readline');
const { insertInDatabase } = require("./insertInDatabase");
const { getColumnNames } = require("./getColumnNames");

const readFile = async (file) => {
	const columns = await getColumnNames();
	const rows = [];
	const promises = [];

	return new Promise((resolve, reject) => {
		const filePath = file.path;
		const fileStream = fs.createReadStream(filePath);

		const rl = readline.createInterface({
			input: fileStream,
			crlfDelay: Infinity
		});

		rl.on('line', async (line) => {
			promises.push(async () => {
				try {
					const values = line.split('|$$|');
					const result = await insertInDatabase(values, columns);
					rows.push(result);
				} catch (err) {
					reject(err);
				}
			})
		});

		rl.on('close', async () => {
			console.log(promises)
			await Promise.all(promises);
			console.log(promises)

			const addedRows = rows.filter(result => result === 'added').length;
			const duplicateRows = rows.filter(result => result === 'duplicate').length;
			const errorRows = rows.filter(result => result === 'error').length;

			resolve({ addedRows, duplicateRows, errorRows });
		});
	});
};


module.exports = { readFile };