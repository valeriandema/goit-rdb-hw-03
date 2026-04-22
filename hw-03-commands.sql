-- =====================================================
-- ЗАВДАННЯ 1. Вибрати всі стовпчики з таблиці products та стовпчики name, phone з таблиці shippers
-- =====================================================
SELECT *
FROM products;

SELECT name, phone
FROM shippers;


-- =====================================================
-- ЗАВДАННЯ 2. Середнє, максимальне та мінімальне значення
--             стовпчика price таблиці products
-- =====================================================
SELECT
    AVG(price) AS average_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products;


-- =====================================================
-- ЗАВДАННЯ 3. Унікальні значення колонок category_id та price з таблиці products, сортування за price DESC, LIMIT 10
-- =====================================================
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;


-- =====================================================
-- ЗАВДАННЯ 4. Кількість продуктів у цінових межах від 20 до 100
-- =====================================================
SELECT COUNT(*) AS products_count
FROM products
WHERE price BETWEEN 20 AND 100;


-- =====================================================
-- ЗАВДАННЯ 5. Кількість продуктів та середня ціна (price) у кожного постачальника (supplier_id)
-- =====================================================
SELECT
    supplier_id,
    COUNT(*) AS products_count,
    AVG(price) AS average_price
FROM products
GROUP BY supplier_id;
