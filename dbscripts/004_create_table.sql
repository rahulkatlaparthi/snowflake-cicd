--! Description: Create users table
CREATE OR REPLACE TABLE my_schema.cust (
    id            INT AUTOINCREMENT PRIMARY KEY,
    name          STRING NOT NULL,
    email         STRING UNIQUE,
    created_at    TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP
);
