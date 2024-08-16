const ListingService = require('../services/listing.service');

class ListingController {

    async getListingsData(req, res) {
        try {
            const data = await ListingService.getListingsData();
            res.json(data);
        } catch (err) {
            console.error(err);
            res.status(500).send('Server Error');
        }
    }

    async addListing(req, res) {
        const { id, listing_date, broker, revenue } = req.body;
        try {
            const newListing = await ListingService.addListing({ id, listing_date, broker, revenue });
            res.status(201).json(newListing);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }
}

module.exports = new ListingController();