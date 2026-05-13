CREATE TABLE Tickets (
    Ticket_ID VARCHAR(10),
    Employee_Name VARCHAR(100),
    Department VARCHAR(50),
    Issue_Type VARCHAR(100),
    Priority VARCHAR(20),
    Status VARCHAR(20),
    Created_Date DATE,
    Resolved_Date DATE,
    Resolution_Time_Hours INT,
    Assigned_To VARCHAR(100),
    SLA_Status VARCHAR(20)
);
INSERT INTO Tickets VALUES
('T101','Arun Kumar','HR','Password Reset','Low','Resolved','2026-05-01','2026-05-01',1,'Karthik','Within SLA'),
('T102','Priya S','Finance','System Crash','High','Resolved','2026-05-01','2026-05-02',8,'Vignesh','Breached'),
('T103','Rahul M','IT','VPN Issue','Medium','Pending','2026-05-02',NULL,NULL,'Ajay','Open'),

('T104','Sneha R','HR','Email Not Working','Medium','Resolved','2026-05-02','2026-05-03',5,'Karthik','Within SLA'),
('T105','Vikram P','IT','Server Down','High','Resolved','2026-05-03','2026-05-04',10,'Ajay','Breached'),
('T106','Divya K','Finance','Software Install','Low','Resolved','2026-05-03','2026-05-03',2,'Vignesh','Within SLA'),
('T107','Manoj T','IT','Network Issue','High','Pending','2026-05-04',NULL,NULL,'Ajay','Open'),
('T108','Anitha S','HR','Login Issue','Low','Resolved','2026-05-04','2026-05-04',1,'Karthik','Within SLA'),
('T109','Suresh B','Finance','Data Sync Error','Medium','Resolved','2026-05-05','2026-05-06',6,'Vignesh','Breached'),
('T110','Kiran M','IT','Laptop Slow','Low','Resolved','2026-05-05','2026-05-05',3,'Ajay','Within SLA'),

('T111','Meena R','HR','Printer Issue','Low','Resolved','2026-05-06','2026-05-06',2,'Karthik','Within SLA'),
('T112','Ravi K','Finance','Application Crash','High','Resolved','2026-05-06','2026-05-07',9,'Vignesh','Breached'),
('T113','Arjun S','IT','Firewall Issue','High','Pending','2026-05-07',NULL,NULL,'Ajay','Open'),
('T114','Lavanya P','HR','Account Locked','Medium','Resolved','2026-05-07','2026-05-08',4,'Karthik','Within SLA'),
('T115','Deepak N','Finance','Report Error','Medium','Resolved','2026-05-08','2026-05-09',7,'Vignesh','Breached'),

('T116','Nisha T','IT','VPN Disconnect','Medium','Resolved','2026-05-08','2026-05-08',3,'Ajay','Within SLA'),
('T117','Prakash R','HR','System Hang','Low','Resolved','2026-05-09','2026-05-09',2,'Karthik','Within SLA'),
('T118','Gokul M','Finance','Database Error','High','Resolved','2026-05-09','2026-05-10',11,'Vignesh','Breached'),
('T119','Saranya V','IT','WiFi Issue','Medium','Pending','2026-05-10',NULL,NULL,'Ajay','Open'),
('T120','Hari K','HR','Password Reset','Low','Resolved','2026-05-10','2026-05-10',1,'Karthik','Within SLA');

select * from Tickets;
TRUNCATE TABLE Tickets;


SELECT * FROM Tickets
WHERE Status = 'Pending';

SELECT * FROM Tickets
WHERE Priority = 'High';


-#Total tickets count#-

SELECT COUNT(*) FROM Tickets;

-#Department wise tickets#-

SELECT Department, COUNT(*) AS Total
FROM Tickets
GROUP BY Department;

-#Avg resolution time#-

SELECT AVG(Resolution_Time_Hours) FROM Tickets;

-#SLA breached tickets#-

SELECT * FROM Tickets
WHERE SLA_Status = 'Breached';

-#SLA count#-

SELECT SLA_Status, COUNT(*)
FROM Tickets
GROUP BY SLA_Status;

-#Top issue types#-

SELECT Issue_Type, COUNT(*) AS Count
FROM Tickets
GROUP BY Issue_Type
ORDER BY Count DESC;

-#Engineer workload#-

SELECT Assigned_To, COUNT(*) AS TicketsHandled
FROM Tickets
GROUP BY Assigned_To;
