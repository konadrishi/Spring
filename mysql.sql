Create Table  IF NOT EXISTS lead_detail(
id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email_address  VARCHAR(50),
phone_number VARCHAR(10));

Create Table  IF NOT EXISTS consultant_detail
(id INT PRIMARY KEY,
lead_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
email_address VARCHAR(50),
phone_number VARCHAR(10),
 FOREIGN KEY (lead_id) REFERENCES lead_detail(id)
);

Create Table  IF NOT EXISTS submission
(
id INT PRIMARY KEY,
consultant_id INT,
submission_date DATE,
vendor_company VARCHAR(50),
vendor_name VARCHAR(50), 
vendor_email_address VARCHAR(50),
vendor_phone_number VARCHAR(10),
implementation_partner VARCHAR(50),
cleint_name VARCHAR(50),
pay_rate  VARCHAR(10),
submuission_status VARCHAR(20),
submission_type VARCHAR(20),
city VARCHAR(20),
state VARCHAR(20),
zip VARCHAR(10),
 FOREIGN KEY (consultant_id) REFERENCES consultant_detail(id)
);


Create Table  IF NOT EXISTS submission_update
(
id INT PRIMARY KEY,
submission_id INT,
update_text VARCHAR(50),
created_date DATE,
 FOREIGN KEY (submission_id) REFERENCES submission(id)
)







