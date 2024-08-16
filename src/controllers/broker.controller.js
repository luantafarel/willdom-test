// src/domains/broker/brokerController.js

const BrokerService = require('../services/broker.service');

class BrokerController {
    async addBroker(req, res) {
        const { id, name } = req.body;
        try {
            const newBroker = await BrokerService.addBroker({ id, name });
            res.status(201).json(newBroker);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }
}

module.exports = new BrokerController();
