-- Author: admin@example.com
-- Purpose: Update people record with new name information
-- Target: staging
-- Date: 2025-12-03

UPDATE people
SET 
    first_name = 'Jim',
    last_name = 'Smith',
    updated_at = CURRENT_TIMESTAMP
WHERE email = 'nathanlewis.dev@gmail.com';

