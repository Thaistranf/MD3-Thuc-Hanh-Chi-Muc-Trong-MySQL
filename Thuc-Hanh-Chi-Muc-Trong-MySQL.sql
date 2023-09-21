use classicmodels;
SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';
-- Them chi muc
ALTER TABLE customers ADD INDEX idx_customerName(customerName);
ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);

EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';

-- Xoa index
ALTER TABLE customers DROP INDEX idx_full_name;