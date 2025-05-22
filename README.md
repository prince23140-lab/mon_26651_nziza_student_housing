# 🏠 Student Housing and Roommate Finder 📚
Empowering Students to Find the Right Home and Roommate — Easily and Effectively
---

**Student ID:** 26651

**Names🪗:** Nziza Prince
---

## 🌟 Introduction
In the fast-growing city of Kigali, finding suitable, safe, and affordable housing has become a real challenge for college and university students. With the number of students rising each year, the demand for housing is increasing — but the supply of transparent, centralized, and user-friendly platforms remains limited.

On top of that, roommate matching — something crucial for affordability and comfort — is often left to chance or social media guesswork. Likewise, landlords struggle to connect with genuine student tenants, leading to inefficiencies, miscommunication, and missed opportunities.

## 🎯 This project aims to fix that.

We are designing a powerful Student Housing and Roommate Finder System, backed by a structured database. It will serve as a central platform for students to:

   - Browse available rental properties 🏠

   - Connect with compatible roommates 👯

   - Review and compare listings in a user-friendly way 💬

   - Help landlords efficiently manage property listings 📋
     

This system doesn't just store data — it transforms how students and landlords in Kigali connect. Let’s dive in.

## 🧭 Project Overview
The *Student Housing and Roommate Finder* is a database-driven application designed to simplify the process of:

Searching for student accommodations based on price, location, and room type.

Creating roommate profiles and matching based on lifestyle preferences.

Facilitating transparent communication between students and landlords.

Enabling reviews of both properties and roommates to promote accountability.

## 🎯 Project Objectives

 - ✅ Create a centralized platform for student housing listings

 - ✅ Streamline the property search process with filters and comparisons

 - ✅ Implement intelligent roommate matching based on preferences

 - ✅ Provide transparent review systems for properties and roommates

 - ✅ Develop robust database management tools for landlords

 - ✅ Ensure data security through advanced auditing features

 ##  🌍 Real-World Impact on Society
This project goes beyond software — it addresses key housing challenges in urban student life.

### 👩‍🎓 For Students:
- Increases access to safe and affordable housing.

- Enhances decision-making with roommate matching and reviews.

- Saves time and money spent on random visits and unreliable listings.

### 🏘 For Landlords:
- Offers a direct line to their target market.

- Enables faster occupancy of rooms.

- Builds trust and reputation through student feedback.

### 🔄 For the Community:

 - Promotes a more organized and transparent housing market.

 - Reduces exploitation of vulnerable student tenants.

 - Encourages data-driven rental practices.

---

# 🚀 PHASE 1 — Database Design and Problem Analysis

*Objective:* Defined the core housing challenges in Kigali and proposed a database solution.

## 📍 What This Phase Covers

In Phase 1, we:

 - Define the core problem faced by students and landlords.

 - Identify the target users.

 - Set clear, measurable project goals.

 - Design the initial database structure using 5 interrelated tables.
This foundational work sets the tone for a scalable and effective system. Let’s explore:

## 🛠 Problem Definition

"Students in Kigali struggle to find safe, affordable housing and compatible roommates due to a lack of centralized housing platforms, while landlords face difficulty reaching student tenants."

As student populations rise, demand outpaces quality supply. Landlords rely on word-of-mouth, while students use scattered online platforms or depend on luck. This results in:

- 🧭 Wasted time and effort.

- 🔍 Poor matching of roommate lifestyles.

- 📉 Inefficient property visibility for landlords.

### 📍 Context

- 🌍 Kigali is home to several major universities, attracting students from all regions.

- 🏘 Housing is increasingly commercialized, making affordability a growing issue.

- 📱 Students are tech-savvy, but there's no dedicated platform combining housing + roommates + reviews.

## 👥 Target Users
1.🎓 Students – Seeking rooms and compatible roommates.

2.🏠 Landlords – Offering properties near universities and colleges.

3.📱 Admins (optional in later phases) – To manage system integrity.

### 🎯 Project Goals
- 🧩 Centralize student housing data.

- 🧍‍♂ Connect roommates with matching preferences.

- 📊 Enable property filtering and review features.

- 🧾 Provide landlords with listing management tools.

- 🔐 Secure user data with roles and login credentials.
---

# 🔄 Phase II: Business Process Modeling (MIS)

*Objective:* Visualize the housing/roommate finding workflow using BPMN to clarify roles, interactions, and decision points.

## 📍 What This Phase Covers
This phase focuses on visualizing the workflow of interactions between students, landlords, and the system. Using Business Process Model and Notation (BPMN), we illustrate how data and actions flow through our system. This phase helps align the system with Management Information System (MIS) principles for efficiency, clarity, and better decision-making.

## 📏 Scope of Definition

| Actor                   | Responsibilities                                                                      |
| ----------------------- | ------------------------------------------------------------------------------------- |
| 👩‍🎓 *Student*       | Creates account, sets preferences, browses properties, makes bookings, writes reviews |
| 🤖 *System Functions* | Matches users, filters rooms, updates booking statuses                                |
| 🏠 *Landlord*         | Lists and manages property availability (captured in "Properties" swimlane)           |


## 🏊‍♂ Swimlanes and Their Purpose  
The BPMN diagram uses *horizontal swimlanes* to clearly separate responsibilities across the housing/roommate matching process:  

| *Swimlane*             | *Role*                       | *Key Actions*                                                      |
| ------------------------ | ------------------------------ | -------------------------------------------------------------------- |
| 👨‍🎓 *Student*        | End-user                       | Logs in, sets preferences, browses properties, books, leaves reviews |
| 🧾 *Roommate Profile*  | Data store                     | Stores user preferences and profile data                             |
| 🤝 *Roommate Matching* | Automated backend service      | Matches students using stored preferences                            |
| 🏘 *Properties*       | Property management subsystem  | Displays listings, manages availability                              |
| 🏨 *Listing*           | Booking and reservation system | Handles room selection and allocation                                |
| ⭐ *Reviews*            | Feedback system                | Allows users to submit ratings and comments after stay               |

## 🧠 Why Swimlanes Are Useful

- 🔍 Clarity: Swimlanes clearly divide responsibilities between users and system components.

- 📌 Accountability: Each lane shows which actor or system module is responsible for specific tasks.

- ⚡ Efficiency: Handoffs and dependencies are easily identified, helping optimize workflow.

 #  📸 BPMN Diagram Screenshot
Student Housing BPMN Diagram

![BPMN DIAGRAM ](https://github.com/user-attachments/assets/d7248611-87df-4a20-8171-bc33a3717553)


# 🔍 Diagram Explanation

## ➤ Process Flow Overview:
The process begins on the left with a student logging in, and flows rightward through:

- Set Preferences

- Match with Roommates

- Browse Properties

- Book Rooms

- Leave Reviews

↩ Circular arrows indicate repeatable or iterative actions (e.g., browsing multiple properties before booking).

## ➤ Key Interactions:
- Student ↔ Roommate Profile: Preferences are saved or updated regularly.

- Matching ↔ Properties: Matching engine filters properties according to student needs.

- Booking ↔ Reviews: Every completed booking connects to a review submission.

## ➤ Decision Points:
- ✅ Availability Checks: "Is the property available?" decision is made before booking.

- 🔁 Feedback Loops: Students can revise preferences based on previous matches.

## 🧩 MIS Alignment

- 📊 Decision Support: Roommate matching logic helps users make informed choices.

- 🔄 Operational Streamlining: Automated systems handle status changes and suggestions.

- 📥 Data Capture: Every action—preference update, review, or booking—feeds into the MIS for better future recommendations.

##  🛠 Tools Used
*Lucidchart:* For BPMN-compliant diagramming.

---


# 📂 Phase III: Logical Model Design (ER Diagram)

In this phase, we transition from process modeling to designing a detailed logical data model, ensuring it reflects the needs captured in the problem statement (Phase I) and workflows visualized in the BPMN (Phase II). The Entity-Relationship (ER) model helps us structurally define the data, its relationships, and business rules.

## 📍 What This Phase Covers:

- ✅ Definition of entities involved in the system (e.g., Student, Property, Booking, Review, etc.)

- ✅ Attributes and keys for each entity

- ✅ Relationships and constraints between entities (1:N, M:N, etc.)

- ✅ Normalization to eliminate redundancy and ensure data integrity

- ✅ Data handling readiness for real-world cases like multiple bookings or changing availability

---

## 🔷 ER Model Overview
| *Entity*               | *Key Attributes*                                                                      | *Data Types & Constraints*                                                             | *PK / FK*                                                                   |
| ------------------------ | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| 🧑‍💻 *User*           | user_id, username, email, password_hash, role                                 | role CHECK ('student', 'landlord') <br> email UNIQUE, NOT NULL                     | *PK:* user_id                                                             |
| 🎓 *Student*           | Inherits from User + phone_number                                                     | VARCHAR2(20) <br> NOT NULL                                                           | *FK:* user_id → User.user_id                                              |
| 🏠 *Landlord*          | Inherits from User + phone_number                                                     | VARCHAR2(20)                                                                           | *FK:* user_id → User.user_id                                              |
| 🏢 *Property*          | property_id, address, price_per_month, amenities, availability, landlord_id | availability CHECK ('Yes', 'No') <br> price_per_month NUMBER                         | *PK:* property_id <br> *FK:* landlord_id → User.user_id               |
| 👥 *Roommate\_Profile* | roommate_id, budget, room_type_preference, gender_preference, student_id      | gender_preference CHECK ('Male','Female','Any') <br> budget NUMBER                   | *PK:* roommate_id <br> *FK:* student_id → User.user_id                |
| 📋 *Listing*           | listing_id, status, student_id, property_id                                     | status CHECK ('Available','Booked') <br> NOT NULL                                    | *PK:* listing_id <br> *FKs:* student_id, property_id                |
| ✍ *Reviews*           | review_id, review_type, rating, comment, reviewer_id, reviewee_id           | rating CHECK (rating BETWEEN 1 AND 5) <br> review_type CHECK ('property','roommate') | *PK:* review_id <br> *FKs:* reviewer_id, reviewee_id → User.user_id |


---

## 🔗 Relationships & Constraints

| *Relationship*               | *Type*        | *Constraint Enforcement*                                                                 |
|--------------------------------|----------------|------------------------------------------------------------------------------------------|
| User → Student/Landlord        | Inheritance    | Discriminator column (role) controls specialization                                   |
| Landlord → Property            | 1-to-Many      | landlord_id FK in Properties table                                                    |
| Student → Roommate_Profile     | 1-to-1         | One profile per student (enforced via application logic)                                |
| Student ↔ Property (Listing)   | Many-to-Many   | Junction table (Listing) with status tracking                                        |
| User → Reviews                 | Self-referential| Allows users to review each other (properties/roommates) via reviewer_id/reviewee_id |

###  ✅ Key Constraints:
- NOT NULL on all PKs and critical fields (email, password_hash)
- CHECK constraints for enumerated values (role, status, etc.)
- DEFAULT CURRENT_TIMESTAMP for audit fields (created_at)

---

## 🧹 Normalization (3NF)
1. *1NF Achieved:*
   - All attributes atomic (no composite fields)
   - No repeating groups

2. *2NF Achieved:*
   - All non-key attributes fully dependent on PKs
   - No partial dependencies (e.g., amenities depends on full property_id)

3. *3NF Achieved:*
   - No transitive dependencies:
     - price_per_month depends on property_id, not on landlord_id
     - gender_preference depends on roommate_id, not student_id

*✨Normalization Benefits:*
- Reduced data redundancy (e.g., user details stored once)
- Prevented update anomalies (e.g., changing landlord info doesn't affect property prices)
- Maintained data integrity for growing user base (scales to 10,000+ users easily)
---

## 📐 Handling Data Scenarios
| *Real-World Scenario*           | *How It's Handled in the Model*                                                     |
| --------------------------------- | ------------------------------------------------------------------------------------- |
| 🆕 Student signs up               | Insert into User (role = 'student') → optional Roommate_Profile entry             |
| 🏘 Landlord registers a property | Insert into Property table with valid landlord_id FK                              |
| 📑 Student books a property       | New row in Listing with status = 'Booked' → Triggers update availability = 'No' |
| ⭐ Submitting a roommate review    | Insert into Reviews table → review_type = 'roommate', rating, comment         |
| 📅 Restrict booking on holidays   | Future Holiday_Dates table will restrict insert/update via triggers (Phase VII)     |

---

## 📸 ER Diagram Screenshot

![ERDiagram](https://github.com/user-attachments/assets/31d20847-d8e1-452f-b0bb-ef019684f2c7)


---

## 🔍 ER Diagram Description
*💠 Key Components:*
1. **🧑‍💻 Central User Entity**  
   - Serves as parent for Student/Landlord (inheritance via role discriminator)
   - Contains authentication fields (password_hash)

2. *🏘Property Management*  
   - Landlord owns multiple Properties (1:N)
   - Each Property has price, amenities, and availability status

3. *👭Roommate System*  
   - Student has one Roommate_Profile (1:1)
   - Profile stores matching criteria (budget, gender preference)

4. *📋 Booking & Reviews*  
   - Listing table resolves Student↔Property M:N relationship  
   - Reviews allow bidirectional ratings (student→property or student→roommate)
     
 5. *⭐ Rating & Feedback System*

   - Reviews support 360° feedback (roommate or property reviews)
   - Enforced with proper CHECK constraints and FKs

### 🌟 Design Highlights:

- 🔐 Security: Passwords hashed in application before storing

- 📅 Timestamps: Audit fields (created_at) for tracking changes

- ♻ Extensibility: Easy to plug in additional features (payments, chat, availability calendar)

---

# 💾 Phase IV: Database (Pluggable Database) Creation and Naming

## 📍 What This Phase Covers:
This phase involved creating and configuring a pluggable database named mon_26651_nziza_student_housing_db in Oracle 21c. After connecting as SYSDBA, existing containers were checked, and a new PDB was created with the required naming format and admin user (prince). The PDB was then opened, its state saved for auto-start, and the session was set to the new container. A user account prince1 was created with full privileges (CONNECT, RESOURCE, DBA, SYSDBA) to manage the project database. This setup ensures isolated, secure, and fully manageable access to the student housing database environment.

---

### 🧱 1. Database Creation (Container Setup)
Before creating a pluggable database, we start by connecting as SYSDBA to the CDB root container and check existing containers.
```sql
sqlplus / as sysdba
```
Check existing pluggable databases
```sql
SHOW PDBS;
```
Result:
```sql
    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 ORCLPDB                        MOUNTED
```
✅ You can confirm you're working inside CDB$ROOT using:
```sql
SHOW CON_NAME;
```
## 🛠 2. Create a Pluggable Database

We created the PDB using Oracle’s standard naming format:

`mon_26651_nziza_student_housing_db`

🧾 Admin Username: `prince`

🔑 Password: `prince`

Here’s the exact SQL command we used in CMD:

```sql
CREATE PLUGGABLE DATABASE mon_26651_nziza_student_housing_db
ADMIN USER prince IDENTIFIED BY prince
FILE_NAME_CONVERT={'C:\ORACLE21C\ORADATA\ORACLE\PDBseed\',
'C:\ORACLE21C\ORADATA\ORACLE\mon_26651_nziza_student_housing_db\'};

Pluggable database created.
```
✅ The PDB was created successfully.

### Key Components:

| *Component*                               | *Purpose*                                                                 |
| ---------------------------------           | ------------------------------------------------------------------------------------- |
| mon_26651_nziza_student_housing_db          | Follows naming convention: Group_StudentID_FirstName_Project_DB             |
| ADMIN USER prince                           | Creates default admin user with password prince (your first name)         |
|  FILE_NAME_CONVERT                          | Correct pathing for physical storage of new PDB files.                      |

## 🔓 3. Open the Newly Created PDB

After creation, we opened the pluggable database so that it becomes usable:
```sql
ALTER PLUGGABLE DATABASE mon_26651_nziza_student_housing_db OPEN;
```
✅ *Purpose:* Makes the PDB accessible for operations

## 💾 4. Save the PDB State (Auto Start)

Saving the state ensures the PDB auto-starts the next time the database is launched:
```sql
ALTER PLUGGABLE DATABASE mon_26651_nziza_student_housing_db SAVE STATE;
```
Why? Ensures PDB auto-starts when the CDB restarts

## 🔄 5. Set Session to New PDB
Once the PDB is running, we switched our session to it:
```sql
ALTER SESSION SET CONTAINER = mon_26651_nziza_student_housing_db;
```
*✅ This allows us to create tables, users, and perform all operations inside our specific database.*

## 👨‍💻 6. User Account Creation

To work within the PDB, we created a custom user named prince.

```sql
CREATE USER prince IDENTIFIED BY prince;

Successful Alternative:
```
This user will manage tables, procedures, and other PL/SQL objects in our project.


## 🔐 7. Grant Privileges to the User
To ensure full access and development capability, we granted all necessary privileges:
```sql
GRANT CONNECT, RESOURCE, DBA, SYSDBA TO prince;

```
### ✅ Why These Privileges?

- `CONNECT` allows login access

- `RESOURCE` allows creation of tables, views, triggers

- `DBA `gives full admin power over the PDB

- `SYSDBA` is the highest level access (used during setup)

  
## 📸 Screenshot Requirement:

![Pluggable db](https://github.com/user-attachments/assets/ca241bad-052b-4980-8569-8bdedc20fa35)


### ✅ Verification Steps

PDB Status Check

```sql
SQL> show pdbs;

  CON_ID CON_NAME                          OPEN MODE  RESTRICTED
------- -------------------------------- ---------- ----------
4       MON_26651_NZIZA_STUDENT_HOUSIN_ READ WRITE NO
        G_DB
```
## 📊 Oracle Enterprise Manager (OEM) Configuration
After setting up the database, we opened Oracle Enterprise Manager (OEM) to monitor and manage our PDB.

  - Accessed at: https://localhost:8443/em

  - OEM shows:

       - Active containers (CDB$ROOT, ORCLPDB, and our  new PDB)

       - Memory usage and container activity

       - Uptime, resource allocation, and storage graphs
         
## 📸 Screenshot Requirement:

OEM Dashboard
![OEM](https://github.com/user-attachments/assets/95d277d4-b829-425f-933e-a593496e881d)



---

# 🏗 Phase V: Table Implementation & Data Insertion

## 📍 What This Phase Covers
This phase involves transforming the logical design of the Student Housing and Rental Platform into a fully functioning physical database using Oracle. It ensures structured table creation, meaningful data insertion, and the enforcement of integrity rules that reflect real-life housing and roommate scenarios.

## 🧱 5.1 Table Creation

Based on our ERD from Phase III, we created five core tables inside the
 `mon_26651_nziza_student_housing_db`PDB:
 We created the following *sample tables* based on the housing and roommate matching system:

 ### 1. 👥 Users Table
 
```sql

 CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR2(50),
    email VARCHAR2(50),
    password_hash VARCHAR2(15),
    user_role VARCHAR2(20),
    CHECK (user_role IN ('student', 'landlord')),
    phone_number VARCHAR2(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
### 📌 Role in System:

The Users table stores all registered accounts, distinguishing between students and landlords. It enables login, profile display, and association with listings, properties, and reviews.

### 2. 🏠 Properties Table (Housing Inventory)

```sql
CREATE TABLE Property (
    property_id INT PRIMARY KEY,
    landlord_id INT,
    property_address VARCHAR2(100),
    price_per_month INT,
    room_type VARCHAR2(20),
    CHECK (room_type IN ('shared room', 'apartment', 'studio')),
    amenities VARCHAR2(100),
    availability_status VARCHAR2(5),
    CHECK (availability_status IN ('Yes', 'No')),
    FOREIGN KEY (landlord_id) REFERENCES Users(user_id)
);

```
### 📌 Role in System:

The Properties table stores rental listings posted by landlords. Each property includes price, room type, amenities, and availability status — all critical for students searching for housing.

### 3. 👫 Roommate_Profile Table
```sql
CREATE TABLE Roommate_Profile (
    roommate_id INT PRIMARY KEY,
    student_id INT NOT NULL UNIQUE,
    budget NUMBER(10,2),
    room_type VARCHAR2(20) CHECK (room_type IN ('shared', 'private')),
    gender_preference VARCHAR2(20) CHECK (gender_preference IN ('Male', 'Female', 'Any')),
    availability_status VARCHAR2(20) CHECK (availability_status IN ('Available', 'Not Available')),
    FOREIGN KEY (student_id) REFERENCES Users(user_id)
);
```
### 📌 Role in System:
This table helps students create a roommate preference profile. It stores data like budget, room type, and gender preference to match them with compatible roommates.


### 🔎 Want to Explore More?
The full table structures and data inserts (including Reviews and Listing) are available in the SQL_Script.sql file uploaded with this project. Please check that script for detailed table creation and all data entries.

### 5.2 🧾 Sample Inserted Data (from script)

Here are some realistic data entries we added:

### 1.👤 Users Table
```sql
INSERT INTO Users VALUES 
(1, 'moses_mugisha', 'moses@auca.ac.rw', 'moses123', 'student', '+250788123456', DEFAULT);

INSERT INTO Users VALUES 
(2, 'jane_kacyeye', 'jane@domain.com', 'jane123', 'landlord', '+250788654321', DEFAULT);

INSERT INTO Users VALUES 
(3, 'alex_nshimiye', 'alex@email.com', 'alex123', 'student', '+250788789101', DEFAULT);
```
### 📋 Data Preview:


| user_id | username       | email               | role     | phone_number    | created_at           |
|---------|----------------|---------------------|----------|-----------------|----------------------|
| 1       | moses_mugisha  | moses@auca.ac.rw    | student  | +250788123456   | 2025-05-20 09:15:22  |
| 2       | jane_kacyeye   | jane@domain.com     | landlord | +250788654321   | 2025-05-20 10:30:45  |
| 3       | alex_nshimiye  | alex@email.com      | student  | +250788789101   | 2025-05-20 11:05:18  |

🔑 *Key Fields:*
- user_id - Unique identifier (Primary Key)
- role - Enforces account type (student/landlord)
- created_at - Automatic timestamp on registration

### 🏠2. Properties Table
```sql
INSERT INTO Properties VALUES 
(1, 2, 'KN 23 St, Nyarutarama', 300, 'apartment', 'WiFi, Parking, Gym', 'Yes');

INSERT INTO Properties VALUES 
(2, 2, 'KG 7 Ave, Kimironko', 200, 'studio', 'WiFi, Balcony', 'No');

INSERT INTO Properties VALUES 
(3, 2, 'KN 9 Rd, Kacyiru', 150, 'shared room', 'WiFi, Kitchen', 'Yes');
```
### 📋 Data Preview:

| property_id | landlord_id | address               | price | room_type   | amenities          | status |
|-------------|-------------|-----------------------|-------|-------------|--------------------|--------|
| 1           | 2           | KN 23 St, Nyarutarama | 300   | apartment   | WiFi, Parking, Gym | Yes    |
| 2           | 2           | KG 7 Ave, Kimironko   | 200   | studio      | WiFi, Balcony      | No     |
| 3           | 2           | KN 9 Rd, Kacyiru      | 150   | shared room | WiFi, Kitchen      | Yes    |

🏷 *Important Constraints:*
- landlord_id references Users.user_id (`Foreign Key`)
- room_type limited to valid options
- status ensures availability tracking

### 3. 👫 Roommate_Profile Table

```sql
INSERT INTO Roommate_Profile VALUES 
(1, 1, 200, 'shared', 'Any', 'Available');

INSERT INTO Roommate_Profile VALUES 
(2, 3, 250, 'private', 'Female', 'Not Available');

```

### 📋 Data Preview:

sql
| roommate_id | student_id | budget | room_type | gender_preference | status      |
|-------------|------------|--------|-----------|-------------------|-------------|
| 1           | 1          | 200    | shared    | Male or Female    | Available   |
| 2           | 3          | 250    | private   | Female            | Not Available |



🔎 Want to Explore More?
The full table structures and data inserts (including Reviews and Listing) are available in the SQL_Script.sql file uploaded with this project. Please check that script for detailed table creation and all data entries.

## 🛡 5.3 Data Integrity & Constraint Enforcement

🛡 Ensure all data supports system logic and is accurate, valid, and consistent.

### 🔒 Data Integrity Enforcement

| *Field*         | *Constraint Applied*        | *Purpose*                                                |
| ----------------- | ----------------------------- | ---------------------------------------------------------- |
| user_id         | PRIMARY KEY                 | Ensures each user is uniquely identified.                  |
| email           | UNIQUE + NOT NULL         | Prevents duplicate accounts and requires valid input.      |
| user_role       | CHECK (IN...) + NOT NULL  | Only allows predefined roles like 'student' or 'landlord'. |
| price_per_month | CHECK (price_per_month > 0) | Ensures prices are valid and not negative.                 |
| room_type       | CHECK (IN...)               | Limits data to valid types like ‘shared’, ‘studio’.        |
| landlord_id     | FOREIGN KEY                 | Must exist in Users table (ensures referential integrity). |
---

## 📑 Table: Constraint Types Implemented

| *Constraint Type* | *Example (Applied On)*                | *Validation Purpose*                           |
| ------------------- | --------------------------------------- | ------------------------------------------------ |
| PRIMARY KEY         | user_id, property_id, roommate_id | Enforces unique identity for each row.           |
| FOREIGN KEY         | landlord_id, student_id             | Maintains relationships between related tables.  |
| NOT NULL            | username, email, user_role        | Prevents essential fields from being left empty. |
| UNIQUE              | email                                 | Ensures no duplicate email accounts exist.       |
| CHECK               | room_type, user_role, budget      | Validates values fall within allowed ranges.     |
| DEFAULT             | created_at                            | Auto-inserts timestamp for record creation.      |
---

### ✅ Data Validation
data has been validated in 3 key areas:
| ✅ Area                     | Description                                                                                 |
| -------------------------- | ------------------------------------------------------------------------------------------- |
| *Constraint Matching*    | All inserted data follows the CHECK, NOT NULL, UNIQUE, and FOREIGN KEY constraints. |
| *Realistic Use*          | Data reflects real-world scenarios (e.g., students renting shared rooms).                   |
| *Relationship Integrity* | All foreign keys point to valid entries (e.g., landlord must exist in the Users table).   |
---
### 🔍 1. Validate Roles (No student registered as landlord)
We ensure users with role student cannot insert properties (since only landlords should have properties).
```sql
-- Check if any 'student' is wrongly referenced as a landlord
SELECT u.user_id, u.username, u.user_role, p.property_id
FROM Users u
JOIN Properties p ON u.user_id = p.landlord_id
WHERE u.user_role = 'student';

```
### 🔍 2. Validate Property References (No property with invalid landlord)
Ensure all landlord_id in `Properties`exists in Users and has role landlord.

```sql
-- Check for properties linked to a non-landlord or invalid user
SELECT p.property_id, p.landlord_id
FROM Properties p
LEFT JOIN Users u ON p.landlord_id = u.user_id
WHERE u.user_id IS NULL OR u.user_role != 'landlord';
```

### 🔍 3. Validate Email Uniqueness
Ensure no duplicate emails are in the Users table.

```sql
-- Check for duplicate emails
SELECT email, COUNT(*)
FROM Users
GROUP BY email
HAVING COUNT(*) > 1;


```

---



# 🔁 Phase VI: Database Interaction and Transactions  


### 🎯 Phase Objective  
This phase ensures effective interaction with the database by executing *DML/DDL operations, organizing code using **procedures, functions, and packages, and handling potential **errors. The focus is on **clean, modular, and secure data operations* that support core functionalities like listing rooms, assigning roommates, and managing tenant data.

---



### ✏ 6.1 Database Operations (DML & DDL)

### 1️⃣ Database Operations: DML & DDL 🧱
This section focuses on how we structure our database and interact with its data using DDL and DML operations. These operations are essential for managing the application’s backend — keeping data organized, accurate, and up-to-date.

### 🔹 DML (Data Manipulation Language) 🔄
These commands allow us to manage the content of the database.

**✅ `INSERT` – Add new data**

Example:
```sql
INSERT INTO students (student_id, full_name, email, preferred_location)
VALUES (101, 'Alice Uwase', 'alice@example.com', 'Kimironko');

```

*Purpose:*

To add new student profiles into the system when a student signs up

**🔁 UPDATE – Modify existing records**
Example:
```sql
UPDATE rooms
SET availability = 'No'
WHERE room_id = 5;
```
### Purpose:
Used when a room becomes occupied, so we update its availability status.


**❌ `DELETE` – Remove data**
Example:
```sql
DELETE FROM roommate_requests
WHERE request_id = 22;
```

### 🔹 DDL (Data Definition Language) 🏗
These commands are used to define and change the structure of the database.

🆕 `CREATE` – Create new tables
Example:

```sql
CREATE TABLE roommates (
  roommate_id NUMBER PRIMARY KEY,
  student_id NUMBER,
  preferences VARCHAR2(100),
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);
```

### Purpose:
To define a new table that stores students' roommate preferences.

**✏ `ALTER` – Modify existing table structure**
Example:
```sql
ALTER TABLE rooms
ADD room_status VARCHAR2(20);

```
### Purpose:
Add new columns like room_status when new features (like active/inactive room labels) are introduced.

**🗑 `DROP` – Remove tables completely**

Example:
```sql
DROP TABLE test_data_backup;
```
### Purpose:
Clean up temporary tables created during testing or migration.


### 📌 Purpose of DML & DDL:
These operations help maintain:

   - 🔧 Structure – Tables and relationships evolve with the app’s features (DDL).

   - 🗂 Content – Student and room data is kept relevant and accurate (DML).

Together, they support smooth functioning of the app’s student registration, room listing, matching roommates, and booking system.


📊 Window Function Example:

```sql

SELECT 
    location,
    COUNT(*) OVER (PARTITION BY location) AS total_requests,
    student_id
FROM 
    roommate_requests;
```
### 🔍 Purpose:
To apply window functions for advanced analytics like ranking, counting, or segmenting data without collapsing rows, which helps in smart roommate matching and decision-making.

❓ Problem: Which rooms are *most frequently requested by students* during a specific month?  

```sql
SELECT room_id, 
       COUNT(*) OVER (PARTITION BY room_id ORDER BY request_date) AS request_count
FROM roommate_requests;
```

📌 *Purpose:* Use *window functions* to analyze trends and help the platform prioritize room assignments based on real-time demand.

---

### 3️⃣ Procedures & Functions ⚙

#### 🔸 Procedure: Get Room Info by ID
```sql
CREATE OR REPLACE PROCEDURE get_room_details(p_room_id IN NUMBER) IS
  v_location VARCHAR2(50);
  v_capacity NUMBER;
BEGIN
  SELECT location, capacity INTO v_location, v_capacity
  FROM rooms WHERE room_id = p_room_id;
  DBMS_OUTPUT.PUT_LINE('Location: ' || v_location || ', Capacity: ' || v_capacity);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('❗Room not found.');
END;
```

#### 🔸 Function: Count Total Active Listings
```sql
CREATE OR REPLACE FUNCTION count_active_rooms RETURN NUMBER IS
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM rooms WHERE status = 'Available';
  RETURN v_count;
END;
```

#### 🔸 Cursor Example: List All Students Seeking a Room
```sql
CREATE OR REPLACE PROCEDURE list_waiting_students IS
  CURSOR c_students IS
    SELECT full_name FROM students WHERE housing_status = 'Waiting';
  v_name students.full_name%TYPE;
BEGIN
  OPEN c_students;
  LOOP
    FETCH c_students INTO v_name;
    EXIT WHEN c_students%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('📍 ' || v_name);
  END LOOP;
  CLOSE c_students;
END;
```

📌 *Purpose:* Reusable components for efficient data retrieval and reporting.

---

### 4️⃣ Exception Handling 🛡

```sql
BEGIN
  INSERT INTO rooms VALUES (301, 'Gikondo', 3, 'Available');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('⚠ Room already exists!');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
```

📌 *Purpose:* Ensure the app gracefully handles errors, avoiding crashes and improving reliability.

---

### 5️⃣ Testing Operations 🔬

Tested all the following to ensure the system works as expected:
- ✅ Inserting new student/room/roommate data
- ✅ Updating room status and preferences
- ✅ Running procedures/functions with valid & invalid inputs
- ✅ Cursor outputs for grouped data
- ✅ Catching exceptions (e.g., invalid IDs, duplicate entries)

📌 *Purpose:* Guarantee data integrity, usability, and error resilience across all database transactions.

---

### 6️⃣ Packages 📦

#### ✅ Package: housing_pkg
```sql
CREATE OR REPLACE PACKAGE housing_pkg AS
  PROCEDURE get_student_info(p_id NUMBER);
  FUNCTION total_rooms_available RETURN NUMBER;
END housing_pkg;

```
```sql
CREATE OR REPLACE PACKAGE BODY housing_pkg AS
  PROCEDURE get_student_info(p_id NUMBER) IS
    v_name VARCHAR2(50);
  BEGIN
    SELECT full_name INTO v_name FROM students WHERE student_id = p_id;
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_name);
  END;

  FUNCTION total_rooms_available RETURN NUMBER IS
    v_total NUMBER;
  BEGIN
    SELECT COUNT(*) INTO v_total FROM rooms WHERE status = 'Available';
    RETURN v_total;
  END;
END housing_pkg;
```

📌 *Purpose:* Group related procedures/functions together for better organization and security.

---

## 📦 What This Phase Covers

| 🔍 Focus Area             | ✅ Description                                                                 |
|--------------------------|---------------------------------------------------------------------------------|
| 📂 DML/DDL Operations     | Manage room, student, and request records in a structured database              |
| ⚙ Procedures/Functions   | Encapsulate logic for reuse, flexibility, and better structure                  |
| 🔁 Window Functions       | Enable analytics like popular room trends or monthly booking stats              |
| 🎯 Cursors               | Loop through data like waiting students or available rooms                      |
| 🛑 Exception Handling     | Gracefully manage errors like duplicates or invalid lookups                     |
| 🧪 Testing                | Validate every operation to ensure expected outputs and data integrity          |
| 📦 Packages              | Bundle logic related to rooms and students for modularity and clean structure   |

---




# 🔐 VII. Phase: Advanced Database Programming and Auditing

This phase enhances the functionality and security of the *🏠 Student Housing and Roommate Finder System 📚* by using *advanced PL/SQL programming* techniques such as *triggers, **packages, and **auditing mechanisms*. These tools are used to automate tasks, enforce security policies, and monitor system activity.

---

## 🧠 1️⃣ Problem Statement Development

### 🎯 Problem Statement:

The system currently lacks enforcement mechanisms for restricting unauthorized data manipulation during critical periods, such as weekdays and national holidays. This creates a risk of unauthorized updates to student housing data.

### ⚠ Justification:

To address this challenge, we must:

* Use *triggers* to automatically restrict employee operations on weekdays and during public holidays.
* Implement *auditing mechanisms* to log all attempts (allowed or denied) to modify critical tables.
* Group logic in *packages* for modular, reusable enforcement and logging.

📌 This improves the *security, **accountability, and **reliability* of the system.

### 📆 Restriction Rules:

* ❌ No *INSERT, **UPDATE, or **DELETE* operations allowed from *Monday to Friday*.
* ❌ Block all manipulation on *public holidays* for the upcoming month.
* ✅ Use a **holiday_dates** table to store public holidays.

---

## 🧲 2️⃣ Trigger Implementation

### 🔃 Simple Trigger: Block Manipulation on Weekdays and Holidays

```sql
CREATE OR REPLACE TRIGGER trg_block_employee_edits
BEFORE INSERT OR UPDATE OR DELETE ON roommate_requests
FOR EACH ROW
BEGIN
    IF TO_CHAR(SYSDATE, 'DY') IN ('MON', 'TUE', 'WED', 'THU', 'FRI') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Modifications are not allowed on weekdays.');
    ELSIF EXISTS (
        SELECT 1 FROM holiday_dates
        WHERE TO_CHAR(holiday_date, 'YYYY-MM') = TO_CHAR(SYSDATE, 'YYYY-MM')
          AND holiday_date = TRUNC(SYSDATE)
    ) THEN
        RAISE_APPLICATION_ERROR(-20002, 'Today is a public holiday. Modification denied.');
    END IF;
END;
```

### 🧩 Purpose:

* Restrict modifications by employees on restricted days.
* Enforce operational control.

### 📤 Output:

* If attempted on a weekday or holiday: ❌ Error message
* If allowed day: ✅ Action proceeds

---

### 🔁 Compound Trigger (for room table)

```sql
CREATE OR REPLACE TRIGGER trg_room_compound
FOR INSERT OR DELETE ON rooms
COMPOUND TRIGGER
  TYPE t_room_list IS TABLE OF rooms%ROWTYPE INDEX BY PLS_INTEGER;
  g_rooms t_room_list;

BEFORE STATEMENT IS
BEGIN
  NULL; -- Optional: log start
END BEFORE STATEMENT;

AFTER EACH ROW IS
BEGIN
  g_rooms(g_rooms.COUNT + 1) := :NEW;
END AFTER EACH ROW;

AFTER STATEMENT IS
BEGIN
  FOR i IN 1..g_rooms.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE('Processed room: ' || g_rooms(i).room_id);
  END LOOP;
END AFTER STATEMENT;
END;
```

### 🧩 Purpose:

* Efficiently process *multiple rows* in batch operations.
* Maintain consistency across multiple actions.

### 📤 Output:

* Displays each room processed in the session.

---

## 📋 3️⃣ Auditing with Restrictions and Tracking

### 🗂 Audit Table

```sql
CREATE TABLE audit_log (
    audit_id       NUMBER GENERATED BY DEFAULT AS IDENTITY,
    user_id        VARCHAR2(50),
    action_date    DATE,
    operation      VARCHAR2(20),
    status         VARCHAR2(10)
);

```
---

### 📌 Trigger-Based Auditing

```sql
CREATE OR REPLACE TRIGGER trg_audit_operations
BEFORE INSERT OR UPDATE OR DELETE ON roommate_requests
FOR EACH ROW
DECLARE
    v_status VARCHAR2(10);
BEGIN
    IF TO_CHAR(SYSDATE, 'DY') IN ('MON', 'TUE', 'WED', 'THU', 'FRI') OR
       EXISTS (SELECT 1 FROM holiday_dates WHERE holiday_date = TRUNC(SYSDATE)) THEN
        v_status := 'DENIED';
        INSERT INTO audit_log (user_id, action_date, operation, status)
        VALUES (USER, SYSDATE, 'BLOCKED EDIT', v_status);
        RAISE_APPLICATION_ERROR(-20003, 'Operation not allowed today.');
    ELSE
        v_status := 'ALLOWED';
        INSERT INTO audit_log (user_id, action_date, operation, status)
        VALUES (USER, SYSDATE, 'EDIT', v_status);
    END IF;
END;

```
### 🧩 Purpose:

* Enforce security policies
* Record all attempts (`allowed/denied`)

### 📤 Output:

* Populates audit_log with:

  * 👤 user_id
  * 📅 action_date
  * ⚙ operation
  * ✅/❌ status

---

## 📦 Packages for Automation

### 🧰 Audit Package Spec

```sql
CREATE OR REPLACE PACKAGE audit_pkg AS
    PROCEDURE log_action(p_user VARCHAR2, p_op VARCHAR2, p_status VARCHAR2);
END;
```

### 🔧 Audit Package Body

```sql
CREATE OR REPLACE PACKAGE BODY audit_pkg AS
    PROCEDURE log_action(p_user VARCHAR2, p_op VARCHAR2, p_status VARCHAR2) IS
    BEGIN
        INSERT INTO audit_log(user_id, action_date, operation, status)
        VALUES (p_user, SYSDATE, p_op, p_status);
    END;
END;
```

🧩 *Purpose:*

* Reusable audit logger
* Clean separation of logic for easier maintenance

### 📤 Output:

* Calls to audit_pkg.log_action insert clean records into the audit log

---

## 🔐 Phase Summary

| Component            | Description                                                         |
| -------------------- | ------------------------------------------------------------------- |
| 🎯 Problem Statement | Highlights need for security & restrictions using advanced DB logic |
| 🔃 Simple Trigger    | Prevents data changes on weekdays and holidays                      |
| 🔁 Compound Trigger  | Efficiently handles multi-row changes for room data                 |
| 📋 Audit Logging     | Logs all modification attempts with user, date, and status          |
| 📦 Packages          | Encapsulates auditing logic for reuse and maintainability           |
| ✅ Output             | Denials shown via errors, logs updated, system integrity enforced   |

---

# 🏁 📘  Conclusion

The *Student Housing and Roommate Finder System 🏠* has evolved into a *comprehensive, secure, and reliable* database-driven application that reflects best practices in modern PL/SQL development. Throughout all phases, the system has been refined to solve real-world problems in a structured, scalable, and maintainable way.

💡 By integrating:

* *Data Manipulation & Definition techniques (DML & DDL)*
* *User Management and Relationships*
* *Stored Procedures, Functions, and Views*
* *Triggers, Packages, and Advanced Security*
* *Auditing and Restriction Logic*

The project ensures:

* ✅ Efficient data access and consistency
* 🔐 Strong enforcement of access rules and modification restrictions
* 📈 Improved traceability and accountability through audit logs
* 🧱 Modular and reusable database components for long-term maintainability

This system is now ready to be deployed in an academic environment to help students easily find housing and compatible roommates, while ensuring data integrity and compliance with administrative policies.

---

## 📚 References

* Oracle Database 21c PL/SQL User’s Guide and Reference: [Oracle Docs](https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/index.html)
* Oracle SQL Language Reference: [SQL Reference](https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/index.html)
* Oracle Audit Trail Concepts: [Oracle Security Guide](https://docs.oracle.com/en/database/oracle/oracle-database/21/dbseg/introduction-to-auditing.html)
* Draw\.io BPMN Standards: [Draw.io](https://app.diagrams.net/)
* AUCA Capstone Project Guidelines 2024

---
