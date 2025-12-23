-- Author: admin@example.com
-- Purpose: Update updated_at timestamp for first 5 charges records
-- Target: staging
-- Date: 2025-12-03

UPDATE charges 
SET updated_at = NOW() 
WHERE id IN (SELECT id FROM charges LIMIT 5)
RETURNING id, amount, campus_id, updated_at;

