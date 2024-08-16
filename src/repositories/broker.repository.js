const db = require('../../db');

class BrokerRepository {
    async findAll() {
        const query = `SELECT id, name FROM brokers`;
        const result = await db.query(query);
        return result.rows;
    }

    async create({ id, name }) {
        const query = `INSERT INTO brokers (id, name) VALUES ($1, $2) RETURNING *`;
        const values = [id, name];
        const result = await db.query(query, values);
        return result.rows[0];
    }
}

module.exports = new BrokerRepository();
