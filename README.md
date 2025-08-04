# online-learning-sql-schema
SQL-based database schema and ER diagram for an Online Learning Management System (LMS), built as part of a database design task.
📚 Online Learning Management System (LMS) – SQL DB Design

## 📌 Project Overview
This project represents a SQL-based database schema for an Online Learning Platform (like Coursera/Udemy). It includes core entities like students, instructors, courses, enrollments, assignments, and submissions.

## 📊 ER Diagram
<img width="1103" height="720" alt="Online_Learning_Platform_ER_Diagram" src="https://github.com/user-attachments/assets/de883547-b203-4c31-8861-886d4e2f73f0" />


## 🧱 Tables Created
- ##Students
- ![Students](https://github.com/user-attachments/assets/1f4d7ca3-ebc3-4746-a8fc-e0bb90468dd2)
  
- ##Instructors
- ![Instructors](https://github.com/user-attachments/assets/05d018d7-9b05-4be1-bdfb-9b559a2f3d24)
  
- ##Courses
- ![Courses](https://github.com/user-attachments/assets/1b5e8d5a-3d30-4722-9671-c650941d0831)
  
- ##Enrollments
-![Enrollments](https://github.com/user-attachments/assets/d260bcd5-3387-402c-b101-c932a7fc1889)

- ##Assignments
- ![Assignments](https://github.com/user-attachments/assets/f542439d-ae68-4579-8778-d2ddd5942c28)
  
- ##Submissions
-![Submissions](https://github.com/user-attachments/assets/30931d10-33cf-4b1f-9dd4-63a6af5e0dc5)

## ⚙️ Relationships
- One instructor → Many courses
- One student → Many enrollments
- One course → Many assignments
- Composite keys in `Enrollments` and `Submissions` for many-to-many mapping

## 💾 SQL Features Used
- Primary & Foreign Keys
- Composite Keys
- Data Types (`VARCHAR`, `DATE`, `INT`)
- Constraints (`UNIQUE`, `CHECK`)
- ENUM values represented via `VARCHAR`

## 🚀 How to Run
1. Open MySQL Workbench
2. Import `Online_Learning_Platform.sql` script
3. Run `Online_Learning_Platform.sql` script to create tables

