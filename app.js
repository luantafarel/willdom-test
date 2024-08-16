// app.js

const express = require('express');
const app = express();
const brokerRoutes = require('./src/routes/broker.routes');
const listingRoutes = require('./src/routes/listing.routes');
const path = require('path');
const { swaggerUi, specs } = require('./src/services/swagger.service'); // Import Swagger configuration

app.use(express.json());
app.use('/api', brokerRoutes);
app.use('/api', listingRoutes);
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(specs)); // Add Swagger UI route

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});