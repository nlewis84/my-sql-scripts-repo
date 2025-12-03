-- Author: admin@example.com
-- Purpose: Add sample users to the users table
-- Target: staging
-- Date: 2025-12-03

INSERT INTO users (email, username, first_name, last_name) VALUES
    ('john.doe@example.com', 'johndoe', 'John', 'Doe'),
    ('jane.smith@example.com', 'janesmith', 'Jane', 'Smith'),
    ('bob.johnson@example.com', 'bobjohnson', 'Bob', 'Johnson'),
    ('alice.williams@example.com', 'alicewilliams', 'Alice', 'Williams'),
    ('charlie.brown@example.com', 'charliebrown', 'Charlie', 'Brown')
ON CONFLICT (email) DO NOTHING;

