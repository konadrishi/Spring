CREATE TABLE Employee (
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  job_start_date DATE,
  salary DECIMAL(10, 2)
);

ALTER TABLE Employee
ADD department VARCHAR(50);

INSERT INTO Employee (first_name, last_name, job_start_date, salary, department)
VALUES
  ('John', 'Doe', '2021-01-15', 50000.00, 'Sales'),
  ('Jane', 'Smith', '2023-03-10', 60000.00, 'Marketing'),
  ('Michael', 'Johnson', '2020-09-01', 55000.00, 'HR'),
  ('Emily', 'Williams', '2023-02-28', 65000.00, 'Finance'),
  ('David', 'Brown', '2019-07-15', 48000.00, 'IT'),
  ('Sarah', 'Miller', '2022-11-20', 70000.00, 'Sales'),
  ('Daniel', 'Davis', '2023-05-12', 52000.00, 'Marketing'),
  ('Jessica', 'Wilson', '2023-06-01', 58000.00, 'HR'),
  ('Christopher', 'Anderson', '2020-03-05', 62000.00, 'Finance'),
  ('Lauren', 'Thompson', '2018-12-03', 45000.00, 'IT'),
  ('Alex', 'Garcia', '2022-09-10', 55000.00, 'Sales'),
  ('Michelle', 'Lee', '2021-04-20', 59000.00, 'Marketing'),
  ('Andrew', 'Taylor', '2023-01-05', 68000.00, 'HR'),
  ('Olivia', 'Clark', '2023-06-15', 51000.00, 'Finance'),
  ('William', 'Walker', '2019-11-28', 47000.00, 'IT');

SELECT MAX(salary) AS highest_salary
FROM Employee;

SELECT *
FROM Employee
WHERE job_start_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

SELECT department, COUNT(*) AS employee_count
FROM Employee
GROUP BY department;

------------------------------------------------------------------------------
SELECT * FROM lead_detail;

INSERT INTO lead_detail (id, first_name, last_name, email_address, phone_number)
VALUES 
  (1, 'John', 'Doe', 'johndoe@example.com', '1234567890'),
  (2, 'Jane', 'Smith', 'janesmith@example.com', '9876543210'),
  (3, 'Alice', 'Johnson', 'alicejohnson@example.com', '5555555555');
  
INSERT INTO consultant_detail (id, lead_id, first_name, last_name, email_address, phone_number)
VALUES 
  (1, 1, 'John', 'Doe', 'johndoe@example.com', '1234567890'),
  (2, 2, 'Jane', 'Smith', 'janesmith@example.com', '9876543210'),
  (3, 3, 'Alice', 'Johnson', 'alicejohnson@example.com', '5555555555'),
  (4, 1, 'Michael', 'Brown', 'michaelbrown@example.com', '9998887777'),
  (5, 2, 'Emily', 'Davis', 'emilydavis@example.com', '4443332222'),
  (6, 3, 'David', 'Wilson', 'davidwilson@example.com', '6667778888'),
  (7, 3, 'Sarah', 'Anderson', 'sarahanderson@example.com', '1112223333'),
  (8, 3, 'Matthew', 'Taylor', 'matthewtaylor@example.com', '7778889999'),
  (9, 1, 'Olivia', 'Martin', 'oliviamartin@example.com', '2223334444'),
  (10, 2, 'Christopher', 'Lee', 'christopherlee@example.com', '8889990000');
  
UPDATE consultant_detail
SET email_address = 'johndoe@google.com'
WHERE first_name='John' and last_name='Doe' And id=1;

SELECT * from submission;

INSERT INTO submission (id, consultant_id, submission_date, vendor_company, vendor_name, vendor_email_address, vendor_phone_number, implementation_partner, cleint_name, pay_rate, submuission_status, submission_type, city, state, zip)
VALUES
  (1, 1, '2023-07-20', 'EFG Company', 'Emily Williams', 'emilywilliams@example.com', '0123456789', 'CDE Partner', 'Client X', '52.00', 'Approved', 'Renewal', 'San Francisco', 'CA', '94101'),
  (2, 2, '2023-07-21', 'HIJ Company', 'David Brown', 'davidbrown@example.com', '1234567890', 'DEF Partner', 'Client Y', '48.00', 'Submitted', 'New', 'Dallas', 'TX', '75201'),
  (3, 3, '2023-07-22', 'IJK Company', 'Sarah Johnson', 'sarahjohnson@example.com', '2345678901', 'EFG Partner', 'Client Z', '58.00', 'In Review', 'New', 'Boston', 'MA', '02101'),
  (4, 4, '2023-07-23', 'KLM Company', 'Daniel Smith', 'danielsmith@example.com', '3456789012', 'FGH Partner', 'Client A', '53.00', 'Approved', 'Renewal', 'Houston', 'TX', '77001'),
  (5, 5, '2023-07-24', 'MNO Company', 'Emily Davis', 'emilydavis@example.com', '4567890123', 'GHI Partner', 'Client B', '62.00', 'Submitted', 'New', 'Atlanta', 'GA', '30301'),
  (6, 6, '2023-07-25', 'OPQ Company', 'Michael Wilson', 'michaelwilson@example.com', '5678901234', 'HIJ Partner', 'Client C', '57.00', 'In Review', 'New', 'Denver', 'CO', '80201'),
  (7, 7, '2023-07-26', 'QRS Company', 'Olivia Thompson', 'oliviathompson@example.com', '6789012345', 'IJK Partner', 'Client X', '47.00', 'Approved', 'Renewal', 'Phoenix', 'AZ', '85001'),
  (8, 8, '2023-06-27', 'TUV Company', 'William Anderson', 'williamanderson@example.com', '7890123456', 'JKL Partner', 'Client Y', '63.00', 'Submitted', 'New', 'Seattle', 'WA', '98101'),
  (9, 9, '2023-06-28', 'VWX Company', 'Jessica Clark', 'jessicaclark@example.com', '8901234567', 'KLM Partner', 'Client Z', '56.00', 'In Review', 'New', 'Miami', 'FL', '33101'),
  (10, 9, '2023-06-29', 'YZA Company', 'Christopher Walker', 'christopherwalker@example.com', '9012345678', 'LMN Partner', 'Client A', '51.00', 'Approved', 'Renewal', 'New York', 'NY', '10001');

SELECT consultant_id, COUNT(*) AS total_submissions
FROM submission
GROUP BY consultant_id;

SELECT consultant_id, submission_date, COUNT(*) AS total_submissions
FROM submission
GROUP BY consultant_id, submission_date;

DELETE FROM submission
WHERE pay_rate IS NULL;
  
SELECT * FROM 
  lead_detail l
  INNER JOIN consultant_detail c on l.id=c.lead_id
  INNER JOIN submission s on c.id=s.consultant_id
  Where l.first_name='John' AND s.submission_date='2023-07-20';
  
  SELECT l.first_name,count(s.id) as SubmissionCount FROM 
  lead_detail l
  INNER JOIN consultant_detail c on l.id=c.lead_id
  INNER JOIN submission s on c.id=s.consultant_id
  Group BY l.first_name;



  
  


