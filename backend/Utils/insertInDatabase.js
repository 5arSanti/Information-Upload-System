const { postQuery } = require("../database/query");


const insertInDatabase = (values, columns) => {
	return new Promise((resolve, reject) => {
		try {
			while (values.length < columns.length) {
				values.push(null);
			}
			const placeholders = Array(columns.length).fill("?").join(",");
			const query = `INSERT INTO vacantes_vigentes_completo (${columns.join(",")}) VALUES (${placeholders})`;

			Promise.all([postQuery(query, values)])

			resolve("added");
		} catch (err) {
			if (err.code === 'ER_DUP_ENTRY') {
				resolve('duplicate');
			} else {
				resolve('error');
			}
		}
	})
};

module.exports = { insertInDatabase };