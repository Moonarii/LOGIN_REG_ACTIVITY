-- Table: hr_user
CREATE TABLE hr_user (
    hr_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    password TEXT,
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- Table: search_applicant_data
CREATE TABLE search_applicant_data (
    applicant_id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    YearsOfExperience INT CHECK (yearsofexperience >= 0),
    Specialization VARCHAR(100) NOT NULL,
    Branch VARCHAR(50),
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_added_by VARCHAR(50),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    last_update_by VARCHAR(50)
);

-- Table: activity_logs
CREATE TABLE activity_logs (
    activity_log_id INT AUTO_INCREMENT PRIMARY KEY,
    Operation VARCHAR(255),
    applicant_id INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    YearsOfExperience INT,
    Specialization VARCHAR(100),
    Branch VARCHAR(50),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update_by VARCHAR(50)
);


