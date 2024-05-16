const { postQuery } = require("../database/query");


const insertInDatabase = async (values, columns) => {
	return new Promise((resolve, reject) => {
		try {
			while (values.length < columns.length) {
				values.push(null);
			}
			const placeholders = Array(columns.length).fill("?").join(",");
			const query = `INSERT INTO vacantes_vigentes_completo (${columns.join(",")}) VALUES (${placeholders})`;

			const results = postQuery(query, values);
			console.log(results);

			resolve('added');
		} catch (err) {
			console.log(err)
			if (err.code === 'ER_DUP_ENTRY') {
				resolve('duplicate');
			} else {
				resolve('error');
			}
		}
	})
};

module.exports = { insertInDatabase };