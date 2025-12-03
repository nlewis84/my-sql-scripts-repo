-- Author: admin@example.com
-- Purpose: Query all users from the users table
-- Target: staging
-- Date: 2025-12-03

SELECT 
    id,
    email,
    username,
    first_name,
    last_name,
    created_at,
    updated_at
FROM users
ORDER BY created_at DESC;

