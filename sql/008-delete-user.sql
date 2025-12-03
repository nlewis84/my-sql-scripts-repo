-- Author: admin@example.com
-- Purpose: Delete a specific user from the users table
-- Target: staging
-- Date: 2025-12-03
-- DirectProd

DELETE FROM users
WHERE email = 'charlie.brown@example.com';

