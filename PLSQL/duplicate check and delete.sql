CREATE TABLE t_user
(
   pid         NUMBER primary key,
   username   VARCHAR2 (20),
   email      VARCHAR2 (25),
   phone      VARCHAR2 (20),
   address    VARCHAR2 (100)
);
/

SET DEFINE OFF;
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (1, 'tamim', 'tamim@gmail.com', '01863258965', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (2, 'sadiq', 'sadiqjp@gmail.com', '01965874236', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (3, 'sakib', 'sakib@gmail.com', '01863258965', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (4, 'kabir', 'kabir@gmail.com', '01596458697', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (5, 'rohit', 'rohit@gmail.com', '015669998785', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (6, 'roman', 'romab@gmail.com', '01258647896', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (7, 'saeem', 'saeemjp@gmail.com', '01996200797', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (8, 'rohit', 'rohit@gmail.com', '015669998785', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (9, 'rohit', 'rohit@gmail.com', '015669998785', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (10, 'saeem', 'saeemjp@gmail.com', '01996200797', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (11, 'rohit', 'rohit@gmail.com', '015669998785', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (12, 'tamim', 'tamim@gmail.com', '01863258965', 'Dhaka, Bangladesh');
Insert into T_USER
   (PID, USERNAME, EMAIL, PHONE, ADDRESS)
 Values
   (13, 'sadiq', 'sadiqjp@gmail.com', '01965874236', 'Dhaka, Bangladesh');
COMMIT;
