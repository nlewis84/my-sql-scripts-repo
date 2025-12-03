-- Author: admin@example.com
-- Purpose: Update admin user configuration for production
-- Target: staging
-- Date: 2025-12-03
-- DirectProd

UPDATE users
SET 
    first_name = 'Admin',
    last_name = 'User',
    updated_at = CURRENT_TIMESTAMP
WHERE email = 'admin@example.com';

