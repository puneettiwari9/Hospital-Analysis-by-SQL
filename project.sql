

--create table public.hospital
CREATE TABLE public.hospital (
hospital_name text,
location text,
department text,
doctors_count integer,
patients_count integer,
admission_date DATE,	
discharge_date DATE,
medical_expenses NUMERIC(10,2)
);
--import csv file by code
COPY
public.hospital (hospital_name ,location ,department ,doctors_count ,patients_count ,admission_date ,	discharge_date ,
medical_expenses)
FROM 'D:\data analyst\SQL -C\All Excel Practice Files\Hospital_Data.csv'
DELIMITER','
CSV HEADER;

SELECT * FROM public.hospital;

--1. Total Number of Patients
SELECT SUM (patients_count)AS total_patient
from  public.hospital;

--2. Average Number of Doctors per Hospital
SELECT "hospital_name" ,AVG (doctors_count)as avg_doc_per_hospital
from  public.hospital
GROUP BY hospital_name;


/*3. Top 3 Departments with the Highest Number of Patients
o Find the top 3 hospital departments that have the highest number of patients*/

SELECT hospital_name, department , patients_count FROM  public.hospital
ORDER BY PATIENTS_COUNT DESC
LIMIT 3;

/*4. Hospital with the Maximum Medical Expenses
o Identify the hospital that recorded the highest medical expenses.
*/

SELECT hospital_name ,SUM (medical_expenses)as total_expenses
from public.hospital
GROUP BY hospital_name
ORDER BY total_expenses
limit 1;

/*5. Daily Average Medical Expenses
o Calculate the average medical expenses per day for each hospital.
*/


SELECT hospital_name ,AVG(medical_expenses)as avg_daily_expenses
from public.hospital
GROUP BY hospital_name
;

/*6. Longest Hospital Stay
o Find the patient with the longest stay by calculating the difference between
Discharge Date and Admission Date.*/
select hospital_name,patients_count,location,
AGE(discharge_date,admission_date) as stay_lenght
from public.hospital
order by stay_lenght desc 
limit 1;


/*7. Total Patients Treated Per City
o Count the total number of patients treated in each city.
*/
SELECT hospital_name, COUNT(patients_count)AS total_patient
from  public.hospital
GROUP BY location
order by total_patient desc;





/*8. Average Length of Stay Per Department
o Calculate the average number of days patients spend in each department.
*/

select department,avg(
AGE(discharge_date,admission_date))as stay_lenght
from public.hospital
group by department
order by stay_lenght desc ;


/*9. Identify the Department with the Lowest Number of Patients
o Find the department with the least number of patients.

*/
SELECT department,COUNT(*) as total_patient
from public.hospital
group by department
order by total_patient asc
limit 1;




/*10. Monthly Medical Expenses Report
• Group the data by month and calculate the total medical expenses for each month.
*/
SELECT TO_CHAR(admission_date,'YYYY-MM') AS MONTH,
SUM(medical_expenses)as total_medical_expenses
from public.hospital
GROUP BY MONTH
ORDER BY MONTH;


