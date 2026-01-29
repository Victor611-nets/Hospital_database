
CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(50)
);

CREATE TABLE visits (
    visit_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id),
    doctor_id INT REFERENCES doctors(doctor_id),
    visit_date DATE,
    diagnosis VARCHAR(100)
);

INSERT INTO patients (full_name, gender, date_of_birth, phone)
VALUES
('John Okafor', 'Male', '1990-05-12', '08012345678'),
('Amina Bello', 'Female', '1985-09-23', '08087654321'),
('Chukwu Uche', 'Male', '2000-01-15', '08123456789');

INSERT INTO doctors (full_name, specialty)
VALUES
('Dr Musa Ahmed', 'Internal Medicine'),
('Dr Grace Eze', 'Paediatrics');

INSERT INTO visits (patient_id, doctor_id, visit_date, diagnosis)
VALUES
(1, 1, '2024-01-10', 'Malaria'),
(2, 2, '2024-01-11', 'Upper Respiratory Infection'),
(1, 2, '2024-01-20', 'Follow-up Visit');


--List all visits with patients' names
SELECT 
    v.visit_id,
    p.full_name AS patient_name,
	p.patient_id,
    v.visit_date,
    v.diagnosis
FROM visits v
JOIN patients p ON v.patient_id = p.patient_id;

--Count total visits
SELECT COUNT(visit_id) AS total_visits
FROM visits;

--Number of visits per doctor
SELECT 
    d.full_name,
    COUNT(v.visit_id) AS number_of_visits
FROM doctors d
LEFT JOIN visits v ON d.doctor_id = v.doctor_id
GROUP BY d.full_name;
