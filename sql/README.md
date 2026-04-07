# 📂 Diccionario de Insights SQL
# 📂 Análisis Estratégico de Ventas con SQL

En este apartado se encuentra la lógica de negocio aplicada al dataset `Global_Superstore`. El objetivo de estas consultas es transformar datos transaccionales en **insights accionables** para las áreas de Finanzas, Logística y Marketing.

---

## 🎯 Resumen de Consultas Clave

A continuación, se detallan los 8 análisis fundamentales realizados para el proyecto:

### 1. 📈 Análisis de Rentabilidad Transaccional
* **objetivo:** Identificar la rentabilidad neta individual de cada operación
* **Valor:** : Permite realizar auditorías rápidas y asegurar que ninguna venta comprometa la utilidad global debido a desviaciones en costos operativos o errores de precio.
* 🔗 [Ver Query](./insights.sql#L1)


1. 📈 Análisis de Rentabilidad Transaccional
Objetivo: Identificar la rentabilidad neta individual de cada operación para detectar posibles fugas de capital.

Valor: Permite realizar auditorías rápidas y asegurar que ninguna venta comprometa la utilidad global debido a desviaciones en costos operativos o errores de precio.

🔗 Ver Query
* 🔗 [Ver Query](./insights.sql#L1)




### 2. ⭐ Productos de Alto Rendimiento (Top 10)
* **Pregunta de Negocio:** ¿Qué productos con ventas superiores a $1,000 USD tienen el mejor margen?
* **Valor:** Permite al equipo de compras priorizar el inventario de productos con mejor retorno de inversión (ROI).
* 🔗 [Ver Query](./insights.sql#L15)

### 3. 🌍 Desempeño por Región Geográfica
* **Pregunta de Negocio:** ¿Qué mercados son líderes en ingresos y eficiencia de costos?
* **Valor:** Ayuda a la expansión territorial enfocando recursos en las zonas más rentables.
* 🔗 [Ver Query](./insights.sql#L30)

### 4. 📉 Salud Financiera por Categoría
* **Pregunta de Negocio:** ¿Existen categorías de productos que generen pérdidas netas?
* **Valor:** Estrategia de producto: decidir si una línea debe ser optimizada, cambiada de proveedor o descontinuada.
* 🔗 [Ver Query](./insights.sql#L45)

### 5. 👤 Identificación de Clientes VIP
* **Pregunta de Negocio:** ¿Quiénes son los 10 clientes con mayor gasto y lealtad acumulada?
* **Valor:** Marketing de Precisión: crear programas de lealtad para los clientes con mayor *Lifetime Value* (LTV).
* 🔗 [Ver Query](./insights.sql#L60)

### 6. 🚚 Auditoría Logística y SLA
* **Pregunta de Negocio:** ¿Se cumplen los tiempos de envío según la prioridad (Critical vs. Low)?
* **Valor:** Optimización de procesos: detectar si las órdenes "críticas" están sufriendo retrasos operativos.
* 🔗 [Ver Query](./insights.sql#L80)

### 7. 🗓️ Análisis de Estacionalidad Mensual
* **Pregunta de Negocio:** ¿Cómo fluctúan las ventas y el margen de ganancia mes a mes?
* **Valor:** Previsión de demanda y preparación para temporadas altas (ej. fin de año).
* 🔗 [Ver Query](./insights.sql#L100)

### 8. 🏷️ Impacto de la Estrategia de Descuentos
* **Pregunta de Negocio:** ¿A partir de qué porcentaje de descuento empezamos a perder dinero?
* **Valor:** Control de precios: evitar que promociones agresivas canibalicen la utilidad neta.
* 🔗 [Ver Query](./insights.sql#L120)

---

## 🛠️ Tecnologías y Técnicas Utilizadas
* **Motor de Base de Datos:** MySQL / SQLite.
* **Funciones Avanzadas:** * `CASE WHEN` para segmentación de rangos.
  * `DATE_FORMAT` / `STRFTIME` para análisis temporal.
  * `NULLIF` para manejo de errores matemáticos (división por cero).
  * `DISTINCT` para normalización de transacciones.
  * `HAVING` para filtrado de datos agregados.

---
[← Volver al proyecto principal](../README.md)
