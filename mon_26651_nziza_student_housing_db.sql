//PHASE V
//Table Creation and Inserting values
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

CREATE TABLE Properties (
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

CREATE TABLE Roommate_Profile (
    roommate_id INT PRIMARY KEY,
    student_id INT,
    budget INT,
    room_type VARCHAR2(20),
    CHECK (room_type IN ('shared', 'private')),
    gender_preference VARCHAR2(20),
    CHECK (gender_preference IN ('Male', 'Female', 'Male or Female')),
    availability_status VARCHAR2(20),
    CHECK (availability_status IN ('Available', 'Not Available')),
    FOREIGN KEY (student_id) REFERENCES Users(user_id)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    reviewer_id INT,
    reviewee_id INT,
    review_type VARCHAR2(20),
    CHECK (review_type IN ('property', 'roommate')),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_comment CLOB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (reviewer_id) REFERENCES Users(user_id),
    FOREIGN KEY (reviewee_id) REFERENCES Users(user_id)
);

CREATE TABLE Listing (
    listing_id INT PRIMARY KEY,
    student_id INT,
    property_id INT,
    availability_status VARCHAR2(20),
    CHECK (availability_status IN ('Available', 'Not Available')),
    FOREIGN KEY (student_id) REFERENCES Users(user_id),
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);



//  INSERTING INTO TABLES

//Users
INSERT INTO Users (user_id, username, email, password_hash, user_role, phone_number) 
VALUES (1, 'moses_mugisha', 'mosesmugisha@example.com', 'moses123', 'student', '+250788123456');

INSERT INTO Users (user_id, username, email, password_hash, user_role, phone_number) 
VALUES (2, 'jane_kacyeye', 'jane.kacyeye@example.com', 'jane123', 'landlord', '+250788654321');

INSERT INTO Users (user_id, username, email, password_hash, user_role, phone_number) 
VALUES (3, 'alex_nshimiye', 'alex.nshimiye@example.com', 'alex123', 'student', '+250788789101');




//Properties
INSERT INTO Properties (property_id, landlord_id, property_address, price_per_month, room_type, amenities, availability_status) 
VALUES (1, 2, 'KN 23 St, Nyarutarama, Kigali', 300, 'apartment', 'WiFi, Parking, Gym', 'Yes');

INSERT INTO Properties (property_id, landlord_id, property_address, price_per_month, room_type, amenities, availability_status) 
VALUES (2, 4, 'KG 7 Ave, Kimironko, Kigali', 200, 'studio', 'WiFi, Balcony', 'No');

INSERT INTO Properties (property_id, landlord_id, property_address, price_per_month, room_type, amenities, availability_status) 
VALUES (3, 2, 'KN 9 Rd, Kacyiru, Kigali', 150, 'shared room', 'WiFi, Shared Kitchen', 'Yes');


//Roomate Profiles
INSERT INTO Roommate_Profile (roommate_id, student_id, budget, room_type, gender_preference, availability_status) 
VALUES (1, 1, 200, 'shared', 'Male or Female', 'Available');

INSERT INTO Roommate_Profile (roommate_id, student_id, budget, room_type, gender_preference, availability_status) 
VALUES (2, 3, 250, 'private', 'Female', 'Not Available');



//Reviews
INSERT INTO Reviews (review_id, reviewer_id, reviewee_id, review_type, rating, review_comment) 
VALUES (1, 1, 2, 'property', 5, 'The apartment was clean and well-maintained.');

INSERT INTO Reviews (review_id, reviewer_id, reviewee_id, review_type, rating, review_comment) 
VALUES (2, 3, 4, 'property', 4, 'Good amenities but slightly noisy location.');

INSERT INTO Reviews (review_id, reviewer_id, reviewee_id, review_type, rating, review_comment) 
VALUES (3, 1, 3, 'roommate', 5, 'Alex is a friendly and tidy roommate. Highly recommend.');



//Listing
INSERT INTO Listing (listing_id, student_id, property_id, availability_status) 
VALUES (1, 1, 1, 'Available');

INSERT INTO Listing (listing_id, student_id, property_id, availability_status) 
VALUES (2, 3, 3, 'Available');

INSERT INTO Listing (listing_id, student_id, property_id, availability_status) 
VALUES (3, 1, 2, 'Not Available');





//Phase VII
//Holiday_dates Table
CREATE TABLE Holiday_Dates (
    holiday_date DATE PRIMARY KEY,
    description  VARCHAR2(100)
);


//Audit_Log Table
CREATE TABLE Audit_Log (
    audit_id       NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id        INT,
    action_type    VARCHAR2(20),
    table_name     VARCHAR2(50),
    status         VARCHAR2(20),
    error_message  VARCHAR2(200),
    action_time    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





//Package creation
CREATE OR REPLACE PACKAGE audit_pkg AS
    PROCEDURE log_action (
        p_user_id     IN INT,
        p_action_type IN VARCHAR2,
        p_table_name  IN VARCHAR2,
        p_status      IN VARCHAR2,
        p_error_msg   IN VARCHAR2 DEFAULT NULL
    );
END;
/


//Package Body
CREATE OR REPLACE PACKAGE BODY audit_pkg AS
    PROCEDURE log_action (
        p_user_id     IN INT,
        p_action_type IN VARCHAR2,
        p_table_name  IN VARCHAR2,
        p_status      IN VARCHAR2,
        p_error_msg   IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO Audit_Log (
            user_id, action_type, table_name, status, error_message
        )
        VALUES (
            p_user_id, p_action_type, p_table_name, p_status, p_error_msg
        );
    END;
END;
/

//Inserting into holiday table
INSERT INTO Holiday_Dates VALUES (TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'New Year');
INSERT INTO Holiday_Dates VALUES (TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'Memorial Day');
INSERT INTO Holiday_Dates VALUES (TO_DATE('2025-07-01', 'YYYY-MM-DD'), 'Independence Day');
COMMIT;

// Restrictions on all DML operations in holidays
CREATE OR REPLACE PROCEDURE check_dml_allowed IS
    v_day    VARCHAR2(10);
    v_today  DATE := TRUNC(SYSDATE);
    v_count  NUMBER;
BEGIN
    SELECT TO_CHAR(v_today, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') INTO v_day FROM dual;

    SELECT COUNT(*) INTO v_count
    FROM Holiday_Dates
    WHERE holiday_date = v_today;

    IF v_day IN ('MON','TUE','WED','THU','FRI') OR v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'DML operations are not allowed on weekdays or public holidays.');
    END IF;
END;
/

//Restriction Trigger on the table of users

CREATE OR REPLACE TRIGGER trg_users_block_dml
BEFORE INSERT ON USERS
FOR EACH ROW
BEGIN
    check_dml_allowed;
END;
/


//Restriction Trigger on the table of listing
CREATE OR REPLACE TRIGGER trg_block_insert_listing
BEFORE INSERT ON Listing
FOR EACH ROW
BEGIN
    check_dml_allowed;
END;
/

//Restriction Trigger on the table of reviews
CREATE OR REPLACE TRIGGER trg_block_insert_reviews
BEFORE INSERT ON Reviews
FOR EACH ROW
BEGIN
    check_dml_allowed;
END;
/

//Restriction Trigger on the table of roommate profile
CREATE OR REPLACE TRIGGER trg_block_insert_roommate
BEFORE INSERT ON Roommate_Profile
FOR EACH ROW
BEGIN
    check_dml_allowed;
END;
/

//Restriction Trigger on the table of properties 
CREATE OR REPLACE TRIGGER trg_block_insert_properties
BEFORE INSERT ON Properties
FOR EACH ROW
BEGIN
    check_dml_allowed;
END;
/


-- COMPOUND TRIGGER on USERS table for INSERT and UPDATE consistency
CREATE OR REPLACE TRIGGER trg_users_compound
FOR INSERT OR UPDATE OR DELETE ON Users
COMPOUND TRIGGER

  -- Declare variables here if needed
  BEFORE STATEMENT IS
  BEGIN
    check_dml_allowed;
  END BEFORE STATEMENT;

  -- You can add other timing points here as needed (e.g., AFTER EACH ROW)

END trg_users_compound;
/

-- COMPOUND TRIGGER on Properties for transactional blocking
CREATE OR REPLACE TRIGGER trg_properties_compound
FOR INSERT OR UPDATE OR DELETE ON Properties
COMPOUND TRIGGER

  BEFORE STATEMENT IS
  BEGIN
    check_dml_allowed;
  END BEFORE STATEMENT;

END trg_properties_compound;
/


// Log audit info

CREATE OR REPLACE PROCEDURE log_audit_info(
    p_user_id    IN INT,
    p_action_type IN VARCHAR2,
    p_table_name IN VARCHAR2,
    p_status     IN VARCHAR2,
    p_error_msg  IN VARCHAR2 DEFAULT NULL
) IS
    PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    INSERT INTO audit_log (user_id, action_type, table_name, status, error_message)
    VALUES (p_user_id, p_action_type, p_table_name, p_status, p_error_msg);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- optionally log or raise
END log_audit_info;
/


CREATE OR REPLACE TRIGGER trg_properties_audit
AFTER INSERT OR UPDATE OR DELETE ON Properties
FOR EACH ROW
DECLARE
    v_user_id INT := NULL; -- if you track the user ID from context/session, use it here
BEGIN
    IF INSERTING THEN
        log_audit_info(v_user_id, 'INSERT', 'Properties', 'SUCCESS');
    ELSIF UPDATING THEN
        log_audit_info(v_user_id, 'UPDATE', 'Properties', 'SUCCESS');
    ELSIF DELETING THEN
        log_audit_info(v_user_id, 'DELETE', 'Properties', 'SUCCESS');
    END IF;
END;
/
//Phase VI
//Housing Package 

CREATE OR REPLACE PACKAGE pkg_housing AS

  -- Function: Get average price by room type
  FUNCTION get_avg_price_by_room_type(p_room_type VARCHAR2)
    RETURN NUMBER;

  -- Procedure: List properties within price range
  PROCEDURE list_properties_in_price_range(p_min_price IN NUMBER, p_max_price IN NUMBER);

END pkg_housing;
/



//Housing Package Body
CREATE OR REPLACE PACKAGE BODY pkg_housing AS

  FUNCTION get_avg_price_by_room_type(p_room_type VARCHAR2)
    RETURN NUMBER IS
    v_avg_price NUMBER;
  BEGIN
    SELECT AVG(price_per_month)
    INTO v_avg_price
    FROM Properties
    WHERE room_type = p_room_type;

    RETURN v_avg_price;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN 0;
    WHEN OTHERS THEN
      -- Log error or re-raise
      RAISE;
  END get_avg_price_by_room_type;

  
  PROCEDURE list_properties_in_price_range(p_min_price IN NUMBER, p_max_price IN NUMBER) IS

    CURSOR cur_props IS
      SELECT property_id, property_address, price_per_month, room_type,
        RANK() OVER (ORDER BY price_per_month) AS price_rank -- window function example
      FROM Properties
      WHERE price_per_month BETWEEN p_min_price AND p_max_price
      ORDER BY price_per_month;

    rec_prop cur_props%ROWTYPE;

  BEGIN
    OPEN cur_props;
    LOOP
      FETCH cur_props INTO rec_prop;
      EXIT WHEN cur_props%NOTFOUND;

      DBMS_OUTPUT.PUT_LINE('Property ID: ' || rec_prop.property_id
                          || ', Address: ' || rec_prop.property_address
                          || ', Price: ' || rec_prop.price_per_month
                          || ', Room Type: ' || rec_prop.room_type
                          || ', Price Rank: ' || rec_prop.price_rank);
    END LOOP;
    CLOSE cur_props;

  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in list_properties_in_price_range: ' || SQLERRM);
  END list_properties_in_price_range;

END pkg_housing;
/



//Housing Package testing
-- Test average price function
DECLARE
  v_avg NUMBER;
BEGIN
  v_avg := pkg_housing.get_avg_price_by_room_type('apartment');
  DBMS_OUTPUT.PUT_LINE('Average price for apartments: ' || v_avg);
END;
/

-- Test listing properties in price range
BEGIN
  pkg_housing.list_properties_in_price_range(100, 300);
END;
/
