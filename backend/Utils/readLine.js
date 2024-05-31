const { insertInDatabase } = require("./insertInDatabase");

const readLine = (rl, columns) => {
	return new Promise((resolve, reject) => {
		const rows = [];
        rl.on('line', async (line) => {
            try {
                const values = line.split('|$$|');
                const result = await insertInDatabase(values, columns);
				rows.push(result);

            }
			catch (err) {
                rows.push('error');
            }
        });

		rl.on('close', () => {
			const addedRows = rows.filter(result => result === 'added').length + 1;
			const duplicateRows = rows.filter(result => result === 'duplicate').length;
			const errorRows = rows.filter(result => result === 'error').length;

			resolve({ addedRows, duplicateRows, errorRows });
		});

        rl.on('error', (err) => {
            reject(err);
        });
    });
}

module.exports = { readLine };