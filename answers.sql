USE intro;
-- Achieving 1NF

CREATE TABLE orders(
orderId INT PRIMARY KEY,
customerName VARCHAR(20)
);

INSERT INTO orders(orderId, customerName)
VALUES(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Achieving 2NF
CREATE TABLE products(
productId INT PRIMARY KEY,
productName VARCHAR(240),
quantity INT,
orderId INT,
FOREIGN KEY (orderId) REFERENCES orders(orderId)
);

INSERT INTO products(productId, productName, quantity, orderId)
VALUES(1, 'Laptop', 2, 101),
(2, 'Mouse', 1, 101),
(3, 'Tablet', 3, 102),
(4, 'Keyboard', 2, 102),
(5, 'Mouse', 1, 102),
(6, 'Phone', 1, 103);