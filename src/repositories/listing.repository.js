const db = require('../../db');

class ListingRepository {
    async getListingsData() {
        const query = `
            SELECT 
                id,
                DATE_TRUNC('month', listing_date) AS listing_month,
                listing_date,
                broker,
                revenue
            FROM 
                listings
            WHERE 
                listing_date BETWEEN '2020-11-01' AND '2021-11-30'
            ORDER BY 
                listing_date;
        `;
        const result = await db.query(query);
        return result.rows;
    }

    async create({ id, listing_date, broker, revenue }) {
        const query = `
            INSERT INTO listings (id, listing_date, broker, revenue)
            VALUES ($1, $2, $3, $4)
            RETURNING *;
        `;
        const values = [id, listing_date, broker, revenue];
        try {
            const result = await db.query(query, values);
            return result.rows[0];
        } catch (error) {
            console.error('Error inserting listing:', error);
            throw error;
        }
    }
}

module.exports = new ListingRepository();
