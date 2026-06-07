## 🌍 Sistema Global de Business Intelligence

De datos transaccionales a decisiones estratégicas:
Un ecosistema integral de análisis de datos que transforma los registros de ventas globales en insights accionables. Desarrollado con un pipeline ETL en Python, consultas optimizadas en SQL para analítica avanzada y dashboards interactivos en Power BI para la toma de decisiones ejecutivas

---

## 🎯 Objetivo del Proyecto

El propósito de este proyecto es convertir datos de una operación de retail internacional en información accionable para la toma de decisiones.

El análisis se enfoca en:
- Rentabilidad de productos
- Comportamiento del cliente
- Eficiencia operativa
- Impacto de estrategias comerciales (descuentos)

---

## 🔄 Flujo del Proyecto

Este proyecto sigue un pipeline completo de análisis de datos:

**Datos crudos → Limpieza (Python) → Análisis (SQL) → Visualización (Power BI)**

---

## 🧩 Fases del Desarrollo

### 1. 🐍 Extracción y Limpieza de Datos (Python)
- Carga de datos desde fuente externa (CSV)
- Normalización de estructuras y nombres de columnas
- Validación de calidad de datos
- Conversión de tipos (fechas, numéricos)
- Feature Engineering:
  - `days_to_ship` (logística)
  - `discount_amount`
  - `unit_price`
  - `profit_status`

🔗 [Ver proceso ETL](./python/README.md)

---

### 2. 🧠 Análisis Estratégico de Negocio (SQL)

Se desarrollaron consultas enfocadas en generar insights accionables:

- Rentabilidad por transacción (auditoría de márgenes)
- Productos más rentables vs alto volumen
- Desempeño por región (brechas de rentabilidad)
- Análisis financiero por categoría
- Identificación de clientes de alto valor (VIP)
- Eficiencia logística (tiempos de entrega)
- Tendencias y estacionalidad de ventas
- Impacto de descuentos en la rentabilidad

Este análisis permite detectar:
- Productos que venden mucho pero no generan utilidad
- Regiones con alto ingreso pero bajo margen
- Estrategias de descuento que afectan negativamente el negocio

🔗 [Ver análisis SQL](./sql/README.md)

---

### 3. 📊 Business Intelligence (Power BI)

- Desarrollo de dashboard interactivo
- Visualización de KPIs clave:
  - Análisis de tendencias y estacionalidad.
  - Identificación de productos clave.
  - Ventas y margen por región.
  - Rentabilidad por categoría.
  - Análisis de rentabilidad por descuentos.
- Soporte para toma de decisiones estratégicas

🔗 [Ver dashboard interactivo](./powerbi/README.md)

---

## 🛠️ Stack Tecnológico

- **Lenguajes:** Python, SQL  
- **Herramientas:** Pandas, Jupyter Notebook, MySQL, Power BI  
- **Control de versiones:** GitHub  

---

## 🏆 Resultados del Proyecto

Se construyó un sistema de análisis que permite:

- Evaluar la rentabilidad real del negocio a nivel producto y región  
- Detectar oportunidades de optimización en precios, costos y logística  
- Identificar clientes de alto valor para estrategias de fidelización  
- Analizar el impacto de los descuentos en la rentabilidad  
- Mejorar la toma de decisiones basada en datos
- Visualizar de forma centralizada toda la operación global a través de un dashboard interactivo

**Hallazgos y Conclusiones Estratégicas (Informe Extenso):**

👉 **[Consultar el Informe de Resultados Finales](./RESULTADOS_FINALES.md)**



