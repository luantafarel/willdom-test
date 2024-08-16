const BrokerRepository = require('../repositories/broker.repository');

class BrokerService {
    async addBroker({ id, name }) {
        return await BrokerRepository.create({ id, name });
    }
}

module.exports = new BrokerService();