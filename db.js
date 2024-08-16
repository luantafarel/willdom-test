const { Pool } = require('pg');
const fs = require('fs');
require('dotenv').config();

// Create a new PostgreSQL client
const pool = new Pool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
    port: process.env.DB_PORT,
    ssl: false
});

(async () => {
    const client = await pool.connect();
    try {
        const sql = fs.readFileSync('init_db.sql').toString();
        await client.query(sql);
        console.log('Database initialized successfully.');
    } catch (err) {
        console.error('Error initializing database:', err);
    } finally {
        client.release();  // Ensure client is released after operation
    }
})();

module.exports = pool;
