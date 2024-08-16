
# Willdom Test Project

This project is a Node.js application designed as a test for Willdom. It includes API endpoints for managing brokers and related entities, uses a SQL database, and is containerized using Docker.

## Table of Contents

- [Willdom Test Project](#willdom-test-project)
  - [Table of Contents](#table-of-contents)
  - [Project Overview](#project-overview)
  - [Installation and Setup](#installation-and-setup)
  - [Database Initialization](#database-initialization)
  - [Running the Application](#running-the-application)
  - [Available Endpoints](#available-endpoints)

## Project Overview

This project provides RESTful API endpoints for managing broker data. It is built with Node.js and Express, uses a SQL database for persistent storage, and includes tests to ensure functionality.

## Installation and Setup

1. **Install dependencies**:
   ```bash
   npm i
   ```

## Database Initialization

The database can be initialized using docker or the provided database init.

1. If you are going to use the provided docker, just run: 
   ```bash
   docker compose up
   ```

The data will be sent to the database mentioned.

I have set up like this because i couldn't modify the database mentioned on the documentation.

## Running the Application

To start the application, use the following command:

```bash
npm start
```

The view of the application will be available at \`http://localhost:3000\`.

## Available Endpoints

You can check the endpoints and the usages on swagger at \`http://localhost:3000\/api-docs`.
I have also provided a postman collection if needed.