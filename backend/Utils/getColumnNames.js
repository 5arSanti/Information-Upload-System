const { getQuery } = require("../database/query");

const getColumnNames = async () => {
    try {
        const query = "SELECT `COLUMN_NAME`FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_NAME`='vacantes_vigentes_completo' AND `COLUMN_NAME` != 'id';";
        const results = await getQuery(query);

		const columnNames = results.map(row => row.COLUMN_NAME);

        return columnNames;
    } catch (err) {
		throw new Error(err);
    }
}

module.exports = { getColumnNames };