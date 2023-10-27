#Role
INSERT INTO `banklmsdb2023`.`tbl_role` (`role_name`)
VALUES ('Administrator');
INSERT INTO `banklmsdb2023`.`tbl_role` (`role_name`)
VALUES ('Field Officer');
INSERT INTO `banklmsdb2023`.`tbl_role` (`role_name`)
VALUES ('Customer');

#Login
INSERT INTO `banklmsdb2023`.`tbl_login`
(`login_name`, `password`, `roleid`)
VALUES
('Admin1', 'password1', 1),
('Admin2', 'password2', 1),
('Officer1', 'password1', 2),
('Officer2', 'password2', 2),
('Officer2', 'password3', 2);

#USER
INSERT INTO `banklmsdb2023`.`tbl_user`
(`aadhar_number`, `date_of_birth`, `dependent`, `email`, `is_active`, `password`, `phone_no`, `user_name`, `login_id`)
VALUES
('111122223333', '1990-01-01', 2, 'user1@example.com', 1, 'password1', '1234567890', 'Mark', 3),
('222233334444', '1985-05-05', 3, 'user2@example.com', 1, 'password2', '9876543210', 'Mary', 3),
('333344445555', '1980-10-10', 1, 'user3@example.com', 1, 'password3', '9876543210', 'Joshy', 3),
('444455556666', '1975-12-15', 2, 'user4@example.com', 1, 'password4', '1234567890', 'Joseph', 3),
('555566667777', '1972-08-20', 3, 'user5@example.com', 1, 'password5', '1234567890', 'Hari', 3);

#Loan
INSERT INTO `banklmsdb2023`.`tbl_loan`
(`interest`, `loan_type`)
VALUES
(5.2, 'Personal Loan'),
(4.5, 'Home Loan'),
(6.0, 'Car Loan'),
(3.8, 'Education Loan'),
(7.5, 'Business Loan');

#LOAN REQUEST
INSERT INTO `banklmsdb2023`.`tbl_loan_request`
(`amount`, `approve_date`, `govtid`, `is_settled`, 
`remarks`, `request_date`, `source_of_income`, `tenure`, 
`assigned_login_id`, `loanid`, `status_id`, `userid`)
VALUES
(5000, '2023-10-01', 'XYZ123', 0, 'No special remarks', '2023-09-25',
 'Salary', 12, 3, 1, 1, 1),
(10000, '2023-10-05', 'ABC789', 0, 'No remarks', '2023-09-28', 
'Business', 24, 4, 2, 1, 2),
(7500, '2023-10-12', 'DEF456', 1, 'Accepted', '2023-10-01', 
'Rental income', 18, 5, 3, 1, 3),
(8000, '2023-10-15', 'GHI789', 0, 'No special remarks', 
'2023-10-02', 'Salary', 24, 3, 4, 1, 4),
(12000, '2023-10-20', 'JKL123', 0, 'No remarks', '2023-10-03', 
'Business', 36, 4, 5, 1, 5);

#STATUS
INSERT INTO `banklmsdb2023`.`tbl_status`
(`status_id`, `status_header`)
VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Rejected'),
(4, 'In Progress'),
(5, 'On Hold');

# ACCOUNT TYPE
INSERT INTO `banklmsdb2023`.`tbl_account`
(`account_id`, `account_type`)
VALUES
(1, 'Savings'),
(2, 'Current'),
(3, 'Fixed Deposit'),
(4, 'Recurring Deposit'),
(5, 'Senior Citizen Savings'),
(6, 'Loan');

#ACCOUNT-REGISTER
INSERT INTO `banklmsdb2023`.`tbl_account_register`
(`account_number`, `nominee`, `account_id`, `loan_requestid`)
VALUES
('ACC12345', 'John Doe', 1, 1),
('ACC67890', 'Jane Smith', 2, 2),
('ACC24680', 'Alice Johnson', 3, 3),
('ACC13579', 'Bob Brown', 4, 4),
('ACC98765', 'Eve White', 5, 5);

#TRANSACTION
INSERT INTO `banklmsdb2023`.`tbl_transaction`
(`transaction_amount`, `transaction_date`, `account_register_id`, `userid`)
VALUES
(1000, '2023-10-01', 1, 1),
(1500, '2023-10-03', 2, 2),
(800, '2023-10-05', 3, 3),
(2000, '2023-10-10', 4, 4),
(1200, '2023-10-12', 5, 5);



