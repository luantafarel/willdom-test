const ListingRepository = require('../repositories/listing.repository');

class ListingService {
    constructor() {

    }
    async getListingsData() {
        return await ListingRepository.getListingsData();
    }

    async addListing({ id, listing_date, broker, revenue }) {
        // Perform any necessary validation here
        if (!id || !listing_date || !broker || !revenue) {
            throw new Error('All fields are required');
        }

        // Create the new listing
        return await ListingRepository.create({ id, listing_date, broker, revenue });
    }

}

module.exports = new ListingService();