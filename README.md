
# Hospital / Clinic Database (SQL)

This project is a simple **hospital/clinic database** built using **SQL**.  
It demonstrates basic database design concepts such as table creation, relationships, data insertion, and querying.

The project is suitable for **beginners learning SQL**, especially in a healthcare context.

---

## 📌 Features

- Stores patient, doctor, and visit information
- Uses **primary keys** and **foreign key relationships**
- Demonstrates common SQL queries:
  - JOIN operations
  - Aggregate functions (COUNT)
  - Grouping data

---

## 🗂️ Database Structure

### 1. Patients Table
Stores basic patient information.

| Column | Description |
|------|------------|
| patient_id | Unique ID for each patient |
| full_name | Patient’s full name |
| gender | Patient’s gender |
| date_of_birth | Date of birth |
| phone | Contact number |

---

### 2. Doctors Table
Stores doctor details.

| Column | Description |
|------|------------|
| doctor_id | Unique ID for each doctor |
| full_name | Doctor’s full name |
| specialty | Medical specialty |

---

### 3. Visits Table
Stores visit records linking patients and doctors.

| Column | Description |
|------|------------|
| visit_id | Unique visit ID |
| patient_id | References patients(patient_id) |
| doctor_id | References doctors(doctor_id) |
| visit_date | Date of visit |
| diagnosis | Diagnosis given |

---

## 🔗 Table Relationships

- Each **visit** is linked to:
  - One **patient**
  - One **doctor**
- Implemented using **foreign keys**

---

🛠️ Technologies Used

SQL (PostgreSQL compatible syntax)

Relational Database Design


🚀 How to Use

Create a database in your SQL environment

Run the table creation scripts

Insert the sample data

Execute the queries to explore the data


📚 Learning Objectives

Understand relational database design

Practice SQL JOIN, COUNT, and GROUP BY

Learn how healthcare data can be structured


📄 License

This project is for learning and educational purposes.


📬 Connect

Feel free to connect with me on:

LinkedIn

Twitter
