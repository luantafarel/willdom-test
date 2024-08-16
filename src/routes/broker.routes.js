// src/routes/brokerRoutes.js

const express = require('express');
const BrokerController = require('../controllers/broker.controller');
const router = express.Router();
/**
 * @swagger
 * components:
 *   schemas:
 *     Broker:
 *       type: object
 *       required:
 *         - id
 *         - name
 *       properties:
 *         id:
 *           type: integer
 *           description: The auto-generated id of the broker
 *         name:
 *           type: string
 *           description: The name of the broker
 *       example:
 *         id: 41
 *         name: "Brooker N"
 */

/**
 * @swagger
 * tags:
 *   name: Brokers
 *   description: The brokers managing API
 */

/**
 * @swagger
 * /brokers:
 *   post:
 *     summary: Create a new broker
 *     tags: [Brokers]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Broker'
 *     responses:
 *       201:
 *         description: The broker was successfully created
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/Broker'
 *       500:
 *         description: Some server error
 */
router.post('/brokers', (req, res) => BrokerController.addBroker(req, res));

module.exports = router;
