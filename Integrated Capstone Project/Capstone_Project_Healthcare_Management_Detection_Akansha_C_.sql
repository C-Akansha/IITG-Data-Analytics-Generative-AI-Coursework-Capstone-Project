----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
### SQL Task for the HEALTHCARE MANAGEMENT: PATIENT READMISSION PREDICTION ###
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

### Data Loading ###
## Create new schema named healthcare
CREATE SCHEMA healthcare;

## Set it as the default schema
USE healthcare;
## Imported 'diabetic_data.csv' into a table named 'diabetic_data' 

----------------------------------------------------------------------------------------------------------------------
## 1. To calculate the total number of patient encounters in the healthcare dataset 
SELECT COUNT(encounter_id) AS total_patient_encounters 
FROM diabetic_data;
----------------------------------------------------------------------------------------------------------------------
## 2. To identify the top 10 most frequent diagnoses in the dataset 
SELECT diagnosis_code, COUNT(*) AS Total_count
FROM (
    SELECT diag_1 AS diagnosis_code FROM diabetic_data
    UNION ALL
    SELECT diag_2 FROM diabetic_data
    UNION ALL
    SELECT diag_3 FROM diabetic_data
) AS combined_diagnoses
WHERE diagnosis_code != '?' AND diagnosis_code IS NOT NULL   ## to remove null and '?' to ensure accuracy
GROUP BY diagnosis_code
ORDER BY Total_count DESC
LIMIT 10;
----------------------------------------------------------------------------------------------------------------------
## 3. To calculate the average length of hospital stay for each admission type
SELECT admission_type_id, AVG(time_in_hospital) AS avg_hospital_stay
FROM diabetic_data
GROUP BY admission_type_id;
----------------------------------------------------------------------------------------------------------------------
## 4. To determine the number of readmitted patients and the percentage of total encounters that they represent 
## here we are breakdown of patient counts and percentages by readmission category
SELECT 
    readmitted AS readmission_category, 
    COUNT(*) AS patient_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM diabetic_data)), 2) AS percentage_of_total_encounter
FROM diabetic_data
GROUP BY readmitted
ORDER BY patient_count DESC;
----------------------------------------------------------------------------------------------------------------------
## 5. To identify the age distribution of patients 
SELECT age, COUNT(*) AS patient_count
FROM diabetic_data
GROUP BY age
ORDER BY age;


----------------------------------------------------------------------------------------------------------------------
## 6. To identify the most common procedures performed during patient encounters
SELECT num_procedures, COUNT(*) AS frequency
FROM diabetic_data
GROUP BY num_procedures
ORDER BY frequency DESC;
----------------------------------------------------------------------------------------------------------------------
## 7. To calculate the average number of medications prescribed for patients in each age group 
SELECT age, AVG(num_medications) AS avg_medications
FROM diabetic_data
GROUP BY age
ORDER BY age;
----------------------------------------------------------------------------------------------------------------------
## 8. To identify the distribution of readmission rates across different payer codes 
SELECT 
    payer_code, 
    COUNT(CASE WHEN readmitted != 'NO' THEN 1 END) * 100.0 / COUNT(*) AS readmission_rate
FROM diabetic_data
WHERE payer_code != '?' ## to remove null values
GROUP BY payer_code;
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
