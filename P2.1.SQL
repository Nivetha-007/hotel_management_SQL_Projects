-- 1. GUEST TABLE
CREATE TABLE guest (
    guest_id SERIAL PRIMARY KEY,
    guest_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

-- 2. ROOM TABLE
CREATE TABLE room (
    room_id SERIAL PRIMARY KEY,
    room_number INT,
    room_type VARCHAR(30),
    price_per_day INT,
    room_status VARCHAR(30)
);

-- 3. STAFF TABLE
CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    staff_name VARCHAR(50),
    job_role VARCHAR(50),
    salary INT,
    phone VARCHAR(15)
);

-- 4. BOOKING TABLE
CREATE TABLE booking (
    booking_id SERIAL PRIMARY KEY,
    guest_id INT REFERENCES guest(guest_id),
    room_id INT REFERENCES room(room_id),
    check_in DATE,
    check_out DATE,
    booking_status VARCHAR(30)
);

-- 5. PAYMENT TABLE
CREATE TABLE payment (
    payment_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES booking(booking_id),
    payment_date DATE,
    amount INT,
    payment_method VARCHAR(30)
);

-- 6. SERVICE TABLE
CREATE TABLE service (
    service_id SERIAL PRIMARY KEY,
    service_name VARCHAR(50),
    service_charge INT
);

-- 7. SERVICE_BOOKING TABLE
CREATE TABLE service_booking (
    service_booking_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES booking(booking_id),
    service_id INT REFERENCES service(service_id),
    quantity INT
);

-- 8. DEPARTMENT TABLE
CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- 9. STAFF_DEPARTMENT TABLE
CREATE TABLE staff_department (
    staff_department_id SERIAL PRIMARY KEY,
    staff_id INT REFERENCES staff(staff_id),
    department_id INT REFERENCES department(department_id)
);

-- 10. FEEDBACK TABLE
CREATE TABLE feedback (
    feedback_id SERIAL PRIMARY KEY,
    guest_id INT REFERENCES guest(guest_id),
    booking_id INT REFERENCES booking(booking_id),
    rating INT,
    comments VARCHAR(200)
);

--insert into guest

INSERT INTO guest
(guest_name, email, phone, city)
VALUES
('Arun','arun@gmail.com','9000000001','Chennai'),
('Priya','priya@gmail.com','9000000002','Madurai'),
('Kavin','kavin@gmail.com','9000000003','Salem'),
('Divya','divya@gmail.com','9000000004','Trichy'),
('Rahul','rahul@gmail.com','9000000005','Coimbatore'),
('Meena','meena@gmail.com','9000000006','Erode'),
('Vijay','vijay@gmail.com','9000000007','Chennai'),
('Nisha','nisha@gmail.com','9000000008','Madurai'),
('Suresh','suresh@gmail.com','9000000009','Salem'),
('Anu','anu@gmail.com','9000000010','Trichy'),
('Ravi','ravi@gmail.com','9000000011','Chennai'),
('Sneha','sneha@gmail.com','9000000012','Coimbatore'),
('Ajay','ajay@gmail.com','9000000013','Erode'),
('Harini','harini@gmail.com','9000000014','Salem'),
('Manoj','manoj@gmail.com','9000000015','Madurai'),
('Pooja','pooja@gmail.com','9000000016','Chennai'),
('Gokul','gokul@gmail.com','9000000017','Trichy'),
('Hema','hema@gmail.com','9000000018','Erode'),
('Karthik','karthik@gmail.com','9000000019','Coimbatore'),
('Swetha','swetha@gmail.com','9000000020','Salem'),
('Mohan','mohan@gmail.com','9000000021','Chennai'),
('Keerthi','keerthi@gmail.com','9000000022','Madurai'),
('Bala','bala@gmail.com','9000000023','Trichy'),
('Deepa','deepa@gmail.com','9000000024','Erode'),
('Vimal','vimal@gmail.com','9000000025','Coimbatore'),
('Lakshmi','lakshmi@gmail.com','9000000026','Salem'),
('Prakash','prakash@gmail.com','9000000027','Chennai'),
('Aishwarya','aishwarya@gmail.com','9000000028','Madurai'),
('Sathish','sathish@gmail.com','9000000029','Trichy'),
('Ramya','ramya@gmail.com','9000000030','Erode'),
('Dinesh','dinesh@gmail.com','9000000031','Coimbatore'),
('Pavithra','pavithra@gmail.com','9000000032','Salem'),
('Vasanth','vasanth@gmail.com','9000000033','Chennai'),
('Anjali','anjali@gmail.com','9000000034','Madurai'),
('Muthu','muthu@gmail.com','9000000035','Trichy'),
('Nandhini','nandhini@gmail.com','9000000036','Erode'),
('Saravanan','saravanan@gmail.com','9000000037','Coimbatore'),
('Revathi','revathi@gmail.com','9000000038','Salem'),
('Surya','surya@gmail.com','9000000039','Chennai'),
('Kavya','kavya@gmail.com','9000000040','Madurai'),
('Vignesh','vignesh@gmail.com','9000000041','Trichy'),
('Monika','monika@gmail.com','9000000042','Erode'),
('Ashwin','ashwin@gmail.com','9000000043','Coimbatore'),
('Janani','janani@gmail.com','9000000044','Salem'),
('Dharani','dharani@gmail.com','9000000045','Chennai'),
('Ramesh','ramesh@gmail.com','9000000046','Madurai'),
('Sangeetha','sangeetha@gmail.com','9000000047','Trichy'),
('Naveen','naveen@gmail.com','9000000048','Erode'),
('Shalini','shalini@gmail.com','9000000049','Coimbatore'),
('Lokesh','lokesh@gmail.com','9000000050','Salem'),
('Abinaya','abinaya@gmail.com','9000000051','Chennai'),
('Suraj','suraj@gmail.com','9000000052','Madurai'),
('Geetha','geetha@gmail.com','9000000053','Trichy'),
('Hari','hari@gmail.com','9000000054','Erode'),
('Bhavya','bhavya@gmail.com','9000000055','Coimbatore'),
('Aravind','aravind@gmail.com','9000000056','Salem'),
('Sharmila','sharmila@gmail.com','9000000057','Chennai'),
('Kishore','kishore@gmail.com','9000000058','Madurai'),
('Swathi','swathi@gmail.com','9000000059','Trichy'),
('Ranjith','ranjith@gmail.com','9000000060','Erode'),
('Aarthi','aarthi@gmail.com','9000000061','Coimbatore'),
('Magesh','magesh@gmail.com','9000000062','Salem'),
('Divakar','divakar@gmail.com','9000000063','Chennai'),
('Mahalakshmi','mahalakshmi@gmail.com','9000000064','Madurai'),
('Sanjay','sanjay@gmail.com','9000000065','Trichy'),
('Kowsalya','kowsalya@gmail.com','9000000066','Erode'),
('Vivek','vivek@gmail.com','9000000067','Coimbatore'),
('Roshini','roshini@gmail.com','9000000068','Salem'),
('Ganesh','ganesh@gmail.com','9000000069','Chennai'),
('Bhavani','bhavani@gmail.com','9000000070','Madurai'),
('Yogesh','yogesh@gmail.com','9000000071','Trichy'),
('Sowmya','sowmya@gmail.com','9000000072','Erode'),
('Nithin','nithin@gmail.com','9000000073','Coimbatore'),
('Kavitha','kavitha@gmail.com','9000000074','Salem'),
('Dhanush','dhanush@gmail.com','9000000075','Chennai'),
('Vidhya','vidhya@gmail.com','9000000076','Madurai'),
('Kannan','kannan@gmail.com','9000000077','Trichy'),
('Rithika','rithika@gmail.com','9000000078','Erode'),
('Siva','siva@gmail.com','9000000079','Coimbatore'),
('Indhu','indhu@gmail.com','9000000080','Salem'),
('Sanjana','sanjana@gmail.com','9000000081','Chennai'),
('Bharath','bharath@gmail.com','9000000082','Madurai'),
('Madhumitha','madhumitha@gmail.com','9000000083','Trichy'),
('Naveena','naveena@gmail.com','9000000084','Erode'),
('Praveen','praveen@gmail.com','9000000085','Coimbatore'),
('Yamuna','yamuna@gmail.com','9000000086','Salem'),
('Raghu','raghu@gmail.com','9000000087','Chennai'),
('Mithun','mithun@gmail.com','9000000088','Madurai'),
('Aparna','aparna@gmail.com','9000000089','Trichy'),
('Rohit','rohit@gmail.com','9000000090','Erode'),
('Sakthi','sakthi@gmail.com','9000000091','Coimbatore'),
('Malar','malar@gmail.com','9000000092','Salem'),
('Vasu','vasu@gmail.com','9000000093','Chennai'),
('Nandha','nandha@gmail.com','9000000094','Madurai'),
('Gayathri','gayathri@gmail.com','9000000095','Trichy'),
('Surender','surender@gmail.com','9000000096','Erode'),
('Padmini','padmini@gmail.com','9000000097','Coimbatore'),
('Dinesh','dinesh2@gmail.com','9000000098','Salem'),
('Malathi','malathi@gmail.com','9000000099','Chennai'),
('Karthika','karthika@gmail.com','9000000100','Madurai');

SELECT * FROM guest;

