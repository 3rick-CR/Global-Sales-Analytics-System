-- =========================================================
-- PROYECTO: Análisis Estratégico de Ventas - Global Superstore
-- Autor: Erick Cr

-- Descripción:
-- Este proyecto analiza el desempeño del negocio utilizando SQL,
-- con enfoque en ingresos, rentabilidad, comportamiento del cliente,
-- eficiencia operativa y estrategia de descuentos.

-- Objetivos Clave:
-- - Identificar productos con alto margen vs alto volumen de ingresos
-- - Evaluar el desempeño regional y brechas de rentabilidad
-- - Analizar el impacto de los descuentos en los márgenes de ganancia
-- - Medir la eficiencia operativa a través del desempeño de envíos
-- - Detectar tendencias de ventas y patrones de estacionalidad

-- Herramientas y Tecnologías:
-- - SQL (MySQL)
-- - Limpieza y agregación de datos
-- - Análisis de negocio

-- =========================================================


DROP DATABASE IF EXISTS superstore_db;
CREATE DATABASE superstore_db;

USE superstore_db;

-- ---- Crear tabla ----
-- Nota: No se pudo generarla directamente con import wizard por el volumen de datos

CREATE TABLE IF NOT EXISTS superstore (
    category VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100),
    customer_id VARCHAR(50),
    customer_name VARCHAR(150),
    discount DECIMAL(10, 4),
    market VARCHAR(50),
    order_date DATETIME,
    order_id VARCHAR(50),
    order_priority VARCHAR(50),
    product_id VARCHAR(50),
    product_name VARCHAR(255),
    profit DECIMAL(15, 4),
    quantity INT,
    region VARCHAR(100),
    sales DECIMAL(15, 4),
    segment VARCHAR(50),
    ship_date DATETIME,
    ship_mode VARCHAR(50),
    shipping_cost DECIMAL(15, 4),
    state VARCHAR(100),
    sub_category VARCHAR(100),
    year INT,
    market2 VARCHAR(50),
    days_to_ship INT,
    discount_amount DECIMAL(15, 4),
    unit_price DECIMAL(15, 4),
    profit_status VARCHAR(15)
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ---- Cargar los datos ---- 

-- Nota: Asegúrarse de ejecutar el script desde la raíz del proyecto clonado
LOAD DATA LOCAL INFILE './Global_Superstore_Clean.csv'
INTO TABLE superstore
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


-- ---- Crear índices ----

CREATE INDEX idx_order_id ON superstore(order_id);
CREATE INDEX idx_product ON superstore(product_name);
CREATE INDEX idx_customer ON superstore(customer_id);
CREATE INDEX idx_order_date ON superstore(order_date);


-- ---- Consultas basicas ----

-- Visualizar numero de filas
SELECT COUNT(*) FROM superstore;

-- Visualizar numero de columnas
SELECT COUNT(*) AS TotalColumnas
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'superstore';

-- Visualizar las 10 primeras filas
SELECT * FROM superstore
LIMIT 10;


-- ---------------------------- Insights -----------------------------------

-- 1) Análisis Transaccional: Rentabilidad por Pedido
-- Identifica pedidos con mayor margen de ganancia.
-- Útil para detectar operaciones altamente rentables.

SELECT 
    order_id, product_name, sales, profit, ROUND(profit / NULLIF(sales, 0), 2) AS profit_margin
FROM superstore
ORDER BY profit_margin DESC
LIMIT 20;

-- ---------------------------------------------------------------

-- 2) Productos de Alto Rendimiento (Top 10)
-- Identifica productos más rentables (ventas, ganancia y margen).
-- Filtra aquellos con ventas > 1000 para enfocarse en volumen relevante.

SELECT 
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY product_name
HAVING SUM(sales) > 1000
ORDER BY profit_margin_pct DESC
LIMIT 10;

-- ---------------------------------------------------------------

-- 3) Desempeño por Región Geográfica
-- Analiza desempeño por región (ventas, ganancia y margen).
-- Permite identificar regiones más y menos rentables.

SELECT 
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;
-- ---------------------------------------------------------------

-- 4) Salud Financiera por Categoría
-- Evalúa desempeño financiero por categoría.
-- Permite detectar categorías poco rentables o con pérdidas.

SELECT 
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY category
ORDER BY total_profit ASC;

-- ---------------------------------------------------------------
-- 5) Mejores clientes (Top 10)
-- Identifica clientes con mayor valor (pedidos, gasto, ganancia y margen).

-- Nota: COUNT(DISTINCT order_id) evita duplicar pedidos con múltiples productos.

SELECT
	customer_id,
	customer_name,
	COUNT(DISTINCT order_id) AS total_orders,
	ROUND(SUM(sales), 2) AS total_spent,
	ROUND(SUM(profit), 2) AS total_profit_contribution,
	ROUND(AVG(profit / NULLIF(sales, 0)) * 100, 2) AS avg_customer_margin
FROM superstore
GROUP BY customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- ---------------------------------------------------------------

-- 6) Eficiencia de Envío por Prioridad del Pedido
-- Analiza tiempo de envío por prioridad, pedidos y ganancia promedio.
-- Permite evaluar eficiencia operativa.

-- Nota: Excluye pedidos > 30 días para evitar outliers.

SELECT 
   order_priority, 
   AVG(days_to_ship) AS avg_shipping_days,
   COUNT(*) AS total_orders,
   ROUND(AVG(profit), 2) AS avg_profit
FROM superstore
WHERE days_to_ship < 30  -- Outlier control
GROUP BY order_priority
ORDER BY avg_shipping_days ASC;

-- ---------------------------------------------------------------

-- 7) Tendencia Mensual de Ventas y Rentabilidad
-- Analiza evolución mensual para detectar tendencias y estacionalidad.

-- Nota:
-- La función de formateo de fecha puede variar según el motor de base de datos:
-- - MySQL: DATE_FORMAT()
-- - SQLite: STRFTIME()

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_mth, 
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY year_mth
ORDER BY year_mth ASC;

-- ---------------------------------------------------------------

-- 8) Impacto de los Descuentos en Ventas y Rentabilidad
-- Analiza impacto de descuentos en ventas, ganancia y margen.
-- Agrupa transacciones por rangos de descuento.

SELECT 
    CASE 
        WHEN discount = 0 THEN '0% - No Discount'
        WHEN discount <= 0.2 THEN '1-20% - Low Discount'
        WHEN discount <= 0.5 THEN '21-50% - Medium Discount'
        ELSE '>50% - High Discount'
    END AS discount_range,
    COUNT(*) AS total_transactions,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY discount_range
ORDER BY profit_margin_pct ASC;



/*
===============================================================================
CONCLUSIONES GENERALES:
===============================================================================

1. RENTABILIDAD VS VOLUMEN: Los suministros de oficina (clips y papelería) ofrecen los
   márgenes más altos (53%-58%), pero el hardware tecnológico (Canon/Ativa) 
   genera el mayor impacto monetario absoluto con utilidades de hasta $3,772 USD.

2. DESEMPEÑO POR REGIÓN: La Región Central lidera en volumen ($2.8M), pero el Sudeste Asiático 
   sufre un foco rojo crítico con apenas 2.02% de margen neto. Canadá destaca 
   como el modelo de eficiencia óptimo con un 26.62% de rentabilidad.

3. IMPACTO DE DESCUENTOS: La estrategia de precios actual destruye el margen neto.
   Descuentos mayores al 21% operan en pérdidas, mientras que las ventas sin descuento 
   sostienen el 25.32% de la rentabilidad neta.

4. EFICIENCIA OPERATIVA: Excelente cumplimiento en los tiempos de entrega prometidos.
   Los pedidos críticos se despachan en 1.8 días promedio y retienen la mayor ganancia por 
   orden ($31.59 USD), validando el cobro premium por urgencia.

5. COMPORTAMIENTO TEMPORAL: Crecimiento orgánico sostenido año con año. 
   Se detecta una fuerte estacionalidad en el último trimestre (Q4) impulsada 
   por cierres de presupuestos corporativos, triplicando las ventas de enero.
   
===============================================================================
*/




