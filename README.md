# Hospital-Analysis-by-SQL
SQL queries and database structure to analyze hospital data using PostgreSQL

This project presents a comprehensive SQL-based analysis of hospital data using PostgreSQL. It simulates real-world healthcare reporting by extracting insights from hospital records like patient statistics, department workloads, hospital stay durations, and medical expense tracking.

---

## 📌 Project Objectives

- Understand the patient distribution across hospitals and departments
- Analyze hospital performance metrics (e.g., doctors/patients ratio)
- Track medical expenses on a hospital and monthly basis
- Evaluate operational efficiency by analyzing stay durations and workloads

---

## 📂 Files Included

| File Name         | Description                                      |
|------------------|--------------------------------------------------|
| `project.sql`     | SQL script containing table creation, data import, and 10 analysis queries |
| `Hospital_Data.csv` | *(Required separately)* Sample data used for import via `COPY` command |
| `README.md`       | Project overview and documentation              |

---

## 🛠️ Tools & Technologies

- **Database**: PostgreSQL
- **Language**: SQL
- **Data Format**: CSV (for import)
- **Tools Tested On**: pgAdmin, DBeaver

---

## 🗃️ Table Structure

The project uses one main table: `public.hospital`

```sql
CREATE TABLE public.hospital (
  hospital_name TEXT,
  location TEXT,
  department TEXT,
  doctors_count INTEGER,
  patients_count INTEGER,
  admission_date DATE,
  discharge_date DATE,
  medical_expenses NUMERIC(10,2)
);
---

##📥 Data Import Command

---To import your CSV file (update the file path to your system):

sql
Copy
Edit
COPY public.hospital (
  hospital_name, location, department,
  doctors_count, patients_count,
  admission_date, discharge_date,
  medical_expenses
)
FROM 'path'
DELIMITER ','
CSV HEADER;

---
## 🧾 SQL Query Summary

| #   | Query Description                                               |
|-----|-----------------------------------------------------------------|
| 1️⃣ | Total number of patients across all hospitals                  |
| 2️⃣ | Average number of doctors per hospital                         |
| 3️⃣ | Top 3 departments with the highest patient count               |
| 4️⃣ | Hospital with the highest medical expenses                     |
| 5️⃣ | Average daily medical expenses per hospital                    |
| 6️⃣ | Patient with the longest hospital stay                         |
| 7️⃣ | Total patients treated per city                                |
| 8️⃣ | Average length of stay per department                          |
| 9️⃣ | Department with the lowest number of patients                  |
| 🔟  | Monthly total medical expenses (grouped by month)              |

---

## 📈 Sample Business Insights

- 💉 **Which department handles the most patients?**
- 💰 **Which hospital spends the most on treatment?**
- 📆 **How long are patients typically staying per department?**
- 🏙️ **Which cities have the highest patient load?**
- 📉 **Which department might need additional resources due to low capacity?**

---

## 🙋‍♂️ About the Author

This project was developed as part of a **SQL learning and data analytics practice initiative** by **Puneet Tiwari**.

> 📫 Feel free to connect, contribute, or provide feedback!


