-- Author: admin@example.com
-- Purpose: Update user phone number (intentional error for testing)
-- Target: staging
-- Date: 2025-12-03

UPDATE users
SET phone_number = '555-1234'
WHERE email = 'john.doe@example.com';

