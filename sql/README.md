# 📂 Análisis Estratégico de Ventas con SQL

Este módulo contiene consultas SQL diseñadas para transformar datos transaccionales en insights accionables para Finanzas, Logística y Marketing.

---

## 🎯 Resumen de Consultas Clave

A continuación, se detallan los 8 análisis fundamentales realizados para el proyecto:

### 1. 📈 Análisis de Rentabilidad Transaccional
* **Objetivo:** Identificar la rentabilidad neta individual de cada operación
* **Valor:** Permite realizar auditorías rápidas, asegurando que ninguna venta comprometa la utilidad global debido a desviaciones en costos operativos o errores de precio.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L101)
<br>

### 2. ⭐ Productos de Alto Rendimiento (Top 10)
* **Objetivo:** Identificar los productos con mejor desempeño combinando volumen de ventas y rentabilidad, priorizando aquellos con ingresos significativos.
* **Valor:** Permite detectar productos estratégicos para el negocio, optimizar el portafolio y enfocar esfuerzos comerciales en aquellos que generan mayor margen sin sacrificar volumen.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L113)
<br>

### 3. 🌍 Desempeño por Región Geográfica
* **Objetivo:** Evaluar el rendimiento del negocio por región considerando ventas, ganancia y margen de rentabilidad.
* **Valor:** Permite identificar regiones más rentables y detectar áreas con bajo desempeño, facilitando decisiones estratégicas sobre expansión, inversión y optimización de recursos.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L130)
<br>

### 4. 📉 Salud Financiera por Categoría
* **Objetivo:** Evaluar el desempeño financiero de cada categoría de productos mediante el análisis de ventas, ganancia y margen de rentabilidad.
* **Valor:** Permite identificar categorías con bajo rendimiento o pérdidas, facilitando decisiones para optimizar el portafolio, ajustar estrategias de precios o reducir costos.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L144)
<br>

### 5. 👤 Identificación de Clientes VIP
* **Objetivo:** Identificar a los clientes más valiosos del negocio mediante el análisis de su volumen de compras, frecuencia de pedidos y contribución a la ganancia.
* **Valor:** Permite enfocar estrategias de retención, fidelización y marketing en los clientes de mayor impacto, maximizando ingresos y rentabilidad a largo plazo.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L158)
<br>

### 6. 🚚 Eficiencia Logística y Tiempos de Entrega
* **Objetivo:** Evaluar la eficiencia del proceso de envío mediante el análisis del tiempo de entrega según la prioridad del pedido, junto con su impacto en la ganancia.
* **Valor:** Permite identificar ineficiencias logísticas, optimizar tiempos de entrega y asegurar el cumplimiento de tiempos de entrega comprometidos, mejorando la experiencia del cliente y la rentabilidad operativa.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L177)
<br>

### 7. 🗓️ Análisis de Estacionalidad Mensual
* **Objetivo:** Analizar la evolución mensual de las ventas, la ganancia y el margen de rentabilidad para identificar patrones de comportamiento a lo largo del tiempo.
* **Valor:** Permite detectar tendencias, estacionalidad y variaciones en la demanda, facilitando la planificación estratégica, la optimización de inventarios y la toma de decisiones comerciales.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L195)
<br>

### 8. 🏷️ Impacto de la Estrategia de Descuentos
* **Objetivo:** Analizar cómo los diferentes niveles de descuento afectan las ventas, la ganancia y el margen de rentabilidad.
* **Valor:** Permite evaluar la efectividad de las estrategias de descuento, identificando si realmente impulsan las ventas o si están afectando negativamente la rentabilidad del negocio.
* 🔗 [Ver Query](https://github.com/3rick-CR/Global-Sales-Analytics-System/blob/main/sql/superstore.sql#L215)
<br>
---

## 🛠️ Tecnologías y Técnicas Utilizadas

- **Motor de Base de Datos:** MySQL / SQLite  
- **Funciones Avanzadas:**
  - `CASE WHEN` para segmentación de rangos  
  - `DATE_FORMAT` / `STRFTIME` para análisis temporal  
  - `NULLIF` para evitar división por cero  
  - `DISTINCT` para normalización de transacciones  
  - `HAVING` para filtrado de agregaciones  

---
[← Volver al proyecto principal](../README.md)
