-- Индексы для ускорения отчётов
CREATE INDEX idx_order_product_product_id ON order_product(product_id);
CREATE INDEX idx_orders_date_created ON orders(date_created);