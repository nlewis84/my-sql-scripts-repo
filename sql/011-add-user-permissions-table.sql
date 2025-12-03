-- Author: admin@example.com
-- Purpose: Add user_permissions table to manage user access permissions
-- Target: staging
-- Date: 2025-12-03

CREATE TABLE IF NOT EXISTS user_permissions (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    permission_name VARCHAR(100) NOT NULL,
    resource VARCHAR(100),
    granted BOOLEAN DEFAULT true,
    granted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    granted_by INTEGER,
    expires_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, permission_name, resource)
);

CREATE INDEX idx_user_permissions_user_id ON user_permissions(user_id);
CREATE INDEX idx_user_permissions_name ON user_permissions(permission_name);
CREATE INDEX idx_user_permissions_resource ON user_permissions(resource);

