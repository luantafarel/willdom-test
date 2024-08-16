-- init_db.sql

-- Create tables
CREATE TABLE IF NOT EXISTS brokers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS listings (
    id SERIAL PRIMARY KEY,
    listing_date DATE NOT NULL,
    broker VARCHAR(255) NOT NULL,
    revenue DECIMAL(10, 2) NOT NULL
);

-- Insert data into brokers
INSERT INTO brokers (id, name) VALUES (1, 'Broker A') ON CONFLICT DO NOTHING;
INSERT INTO brokers (id, name) VALUES (2, 'Broker B') ON CONFLICT DO NOTHING;
INSERT INTO brokers (id, name) VALUES (3, 'Broker C') ON CONFLICT DO NOTHING;
INSERT INTO brokers (id, name) VALUES (4, 'Broker D') ON CONFLICT DO NOTHING;
INSERT INTO brokers (id, name) VALUES (5, 'Broker E') ON CONFLICT DO NOTHING;

-- Insert data into listings
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (1, '2020-11-15', 'Broker A', 1500.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (2, '2020-12-05', 'Broker A', 1800.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (3, '2021-01-10', 'Broker A', 2000.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (4, '2021-02-18', 'Broker A', 1700.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (5, '2021-03-25', 'Broker A', 2100.00) ON CONFLICT DO NOTHING;

INSERT INTO listings (id, listing_date, broker, revenue) VALUES (6, '2020-11-20', 'Broker B', 2200.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (7, '2020-12-15', 'Broker B', 2400.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (8, '2021-01-12', 'Broker B', 2600.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (9, '2021-02-22', 'Broker B', 2500.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (10, '2021-03-30', 'Broker B', 2700.00) ON CONFLICT DO NOTHING;


INSERT INTO listings (id, listing_date, broker, revenue) VALUES (11, '2020-11-25', 'Broker C', 1800.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (12, '2020-12-20', 'Broker C', 1900.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (13, '2021-01-18', 'Broker C', 2100.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (14, '2021-02-25', 'Broker C', 2300.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (15, '2021-03-28', 'Broker C', 2500.00) ON CONFLICT DO NOTHING;

INSERT INTO listings (id, listing_date, broker, revenue) VALUES (16, '2020-11-10', 'Broker D', 2000.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (17, '2020-12-08', 'Broker D', 2200.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (18, '2021-01-15', 'Broker D', 2400.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (19, '2021-02-12', 'Broker D', 2600.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (20, '2021-03-22', 'Broker D', 2800.00) ON CONFLICT DO NOTHING;

INSERT INTO listings (id, listing_date, broker, revenue) VALUES (21, '2020-11-18', 'Broker E', 2100.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (22, '2020-12-12', 'Broker E', 2300.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (23, '2021-01-20', 'Broker E', 2500.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (24, '2021-02-18', 'Broker E', 2700.00) ON CONFLICT DO NOTHING;
INSERT INTO listings (id, listing_date, broker, revenue) VALUES (25, '2021-03-27', 'Broker E', 2900.00) ON CONFLICT DO NOTHING;

-- Add more INSERT statements here
