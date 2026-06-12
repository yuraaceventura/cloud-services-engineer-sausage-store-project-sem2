-- Нормализация: например, добавление индексов или изменения типов
ALTER TABLE orders ALTER COLUMN date_created SET DEFAULT CURRENT_TIMESTAMP;
CREATE INDEX idx_orders_status ON orders(status);