CREATE TABLE orders (
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    price DECIMAL(10,2),
    tax DECIMAL(10,2),
    final_price DECIMAL(10,2)
);