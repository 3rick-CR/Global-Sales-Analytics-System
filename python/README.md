# 🐍 Limpieza y Preparación de Datos (Python)

En esta fase se realiza el proceso ETL inicial sobre el dataset Global Superstore, enfocado en garantizar calidad, consistencia y preparación para análisis posterior en SQL y Power BI.

---

## 🔍 Procesos realizados:

- **Carga de datos** desde fuente externa (CSV)  
- **Normalización de columnas** (snake_case)  
- **Validación de valores nulos**  
- **Eliminación de columnas irrelevantes**  
- **Conversión de tipos de datos**  

### ⚙️ Feature Engineering:

- `days_to_ship` → tiempo de entrega  
- `discount_amount` → descuento en valor monetario  
- `unit_price` → precio por unidad  
- `profit_status` → clasificación de rentabilidad  

---

## 📦 Resultado:

Se genera un dataset limpio y estructurado listo para análisis:
```
Global_Superstore_Clean.csv
```


📓 Notebook
🔗 [Ver notebook de limpieza y análisis]

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/3rick-CR/Global-Sales-Analytics-System/blob/main/python/01_Exploratory_Data_Analysis.ipynb)



[Ver notebook de limpieza y análisis](./01_Exploratory_Data_Analysis.ipynb?plain=1)
