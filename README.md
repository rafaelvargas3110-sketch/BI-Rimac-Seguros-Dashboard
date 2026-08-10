# 📊 Business Intelligence & Análisis Comercial - Rímac Seguros

Diseño e implementación de un Data Mart y un Dashboard interactivo en Power BI para evaluar el desempeño comercial y la eficiencia operativa de Rímac Seguros tras la digitalización de sus procesos (Periodos 2023 vs 2024).

## 🎯 Objetivos del Proyecto
*   **Evaluación Comercial:** Cuantificar el impacto de las mejoras midiendo el volumen de ventas, primas totales y el cumplimiento de metas mensuales.
*   **Eficiencia Operativa:** Monitorear la reducción en el tiempo promedio de atención para la emisión de pólizas.

## 🛠️ Arquitectura y Tecnologías Utilizadas
*   **Fuente de Datos (OLTP):** Base de datos transaccional CPSR en **SQL Server**.
*   **Proceso ETL:** Extracción, limpieza y depuración de datos utilizando **Power Query**.
*   **Modelado de Datos (OLAP):** Diseño de un Data Mart utilizando un **Esquema Estrella (Star Schema)** con una tabla de hechos (`FactPoliza`) y dimensiones (`DimTiempo`, `DimAsesor`, `DimProducto`, `DimContratante`).
*   **Visualización y Cálculos:** **Power BI Desktop** y **DAX** para la creación de KPIs y métricas dinámicas.

## 📈 Resultados e Insights Clave (2023 vs 2024)
A través del tablero de control, se validó el éxito de la digitalización de procesos:
1.  **Crecimiento en Ventas:** Incremento superior al 150% tanto en la Prima Total recaudada como en el Total de Pólizas vendidas.
2.  **Eficiencia Operativa:** Reducción drástica del 68% en el tiempo promedio de atención, pasando de casi 14 horas a menos de 4.5 horas.
3.  **Efectividad Comercial:** Mejora notable en el cumplimiento de las metas mensuales proyectadas.

## 📸 Demostración del Dashboard y Modelado
*(Nota: Para que estas imágenes se vean, puedes arrastrar las capturas de tu documento directamente al editor de GitHub aquí)*

**1. Dashboard de Desempeño Comercial:**
<img width="587" height="338" alt="tablero" src="https://github.com/user-attachments/assets/81717286-dd87-45d6-b1a7-31b34826fbe3" />

**2. Modelado de Datos (Esquema Estrella):**
<img width="587" height="440" alt="modelo" src="https://github.com/user-attachments/assets/018c4512-8378-4551-ae4b-08add38a81d3" />

**3. Flujo del Proceso ETL:**

<img width="315" height="377" alt="flujo" src="https://github.com/user-attachments/assets/70bf42db-3b7c-4990-8957-69f78deb130f" />

## 📁 Archivos del Repositorio
*   `AvanceTableros3.0.pbix`: Archivo principal de Power BI con el modelo de datos y las visualizaciones DAX.
*   `Modelo_Datos_Rimac.sql.sql`: Script de exportación del esquema de la base de datos (tablas, relaciones y procedimientos almacenados).
*   `PPT SEGUROS RIMAC.pdf`: Presentación ejecutiva de resultados, diagnóstico y justificación del proyecto.
