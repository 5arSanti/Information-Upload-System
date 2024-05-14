const { postQuery } = require("../database/query");


const insertInDatabase = async (values, columns) => {
	try {
		while (values.length <= columns.length) {
			values.push(null);
		}
		const placeholders = Array(columns.length).fill("?").join(",");


		const query = `INSERT INTO vacantes_vigentes_completo (${columns}) VALUES (${placeholders})`
		await postQuery(query, values);

		return 'added';
	}
	catch (err) {
		if (err.code === 'ER_DUP_ENTRY') {
            return 'duplicate';
        } else {
            throw new Error(err);
        }
	}
}

module.exports = { insertInDatabase };