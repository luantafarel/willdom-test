# Create a directory to store the certificates
mkdir -p ./postgresql-certs

# Generate the server key
openssl genpkey -algorithm RSA -out ./postgresql-certs/server.key -aes256

# Remove the passphrase from the server key (PostgreSQL requires this)
openssl rsa -in ./postgresql-certs/server.key -out ./postgresql-certs/server.key

# Set the correct permissions
chmod 600 ./postgresql-certs/server.key

# Generate the server certificate
openssl req -new -x509 -key ./postgresql-certs/server.key -out ./postgresql-certs/server.crt -days 365 -subj "/CN=localhost"

# Generate a root certificate (optional, for client verification)
openssl req -new -x509 -key ./postgresql-certs/server.key -out ./postgresql-certs/root.crt -days 365 -subj "/CN=localhost"
