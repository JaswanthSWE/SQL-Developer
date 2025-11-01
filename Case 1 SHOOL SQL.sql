CREATE DATABASE School
SELECT NAME FROM SYS.DATABASES
DROP DATABASE Collage
USE School
CREATE table COURSMASTER(
CID				INT				NOT NULL PRIMARY KEY,
NAME		VARCHAR(40)		NOT NULL,
Category 		CHAR(1)			CHECK(Category IN ('B','M','A')), -- B = Basic , M = Medium  , A = Advance 
Fee			SMALLMONEY		NOT NULL CHECK (Fee	 > 0),
)

INSERT INTO COURSMASTER VALUES ( COURSEMASTER
INSERT INTO COURSMASTER (CID, NAME, Category, Fee)
VALUES
(1, 'Introduction to SQL', 'B', 150.00),
(2, 'Data Science with Python', 'A', 999.50),
(3, 'Power BI for Business', 'M', 450.00),
(4, 'Advanced Database Design', 'A', 750.00),
(5, 'SQL Fundamentals', 'B', 125.00),
(6, 'Machine Learning Basics', 'M', 525.00),
(7, 'Web Development with JavaScript', 'M', 375.00),
(8, 'Cybersecurity Fundamentals', 'B', 200.00),
(9, 'Cloud Computing on AWS', 'A', 895.00),
(10, 'Data Visualization with Tableau', 'M', 480.00),
(11, 'Python for Beginners', 'B', 175.00),
(12, 'Mobile App Development (Android)', 'A', 1100.00),
(13, 'Network Administration', 'M', 550.00),
(14, 'Artificial Intelligence', 'A', 1200.00),
(15, 'Digital Marketing Essentials', 'B', 150.00),
(16, 'DevOps Engineering', 'A', 950.00),
(17, 'C++ Programming for Games', 'M', 600.00),
(18, 'Blockchain Technology', 'A', 1050.00),
(19, 'Data Structures & Algorithms', 'M', 700.00),
(20, 'Introduction to UX/UI Design', 'B', 225.00),
(21, 'React JS for Web Development', 'M', 425.00),
(22, 'Advanced C++ Programming', 'A', 820.00),
(23, 'Full-Stack Development with Node.js', 'A', 1300.00);

TRUNCATE TABLE COURSMASTER

DELETE FROM COURSMASTER

ALTER COURSMASTER
DROP 
INSERT INTO COURSMASTER (CID, NAME, CATEGORY, FEE) VALUES
(101, 'Computer Basics', 'B', 1500.00),
(102, 'Introduction to Programming', 'B', 1800.00),
(103, 'Web Design Fundamentals', 'B', 1600.00),
(104, 'Cloud Fundamentals', 'B', 2000.00),
(105, 'Office Productivity Tools', 'B', 1400.00),
(106, 'Advanced Networking', 'M', 3500.00),
(107, 'Cybersecurity Essentials', 'M', 3200.00),
(108, 'Database Administration', 'M', 3600.00),
(109, 'Linux Server Management', 'M', 3400.00),
(110, 'Virtualization & Containers', 'M', 3300.00),
(111, 'Data Analysis with SQL', 'A', 2500.00),
(112, 'Machine Learning Basics', 'A', 2700.00),
(113, 'AI for Beginners', 'A', 2600.00),
(114, 'DevOps Practices', 'A', 2800.00),
(115, 'Mobile App Development', 'A', 2900.00),
(116, 'Digital Marketing', 'B', 1900.00),
(117, 'Ethical Hacking', 'M', 3700.00),
(118, 'Cloud Security', 'A', 3000.00),
(119, 'Game Development Basics', 'A', 3100.00),
(120, 'Power BI for Reporting', 'A', 2400.00);

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME LIKE '%COUR%';

SELECT CATEGORY, COUNT(*) AS TotalCourses
FROM COURSMASTER
GROUP BY CATEGORY;


SELECT NAME FROM SYS.DATABASES
SELECT * FROM COURSmaster
USE School
--StudentMaster

CREATE TABLE StudentMaster(
SID				TINYINT			PRIMARY KEY,
NAME			VARCHAR(40)		NOT NULL,
ORIGN			CHAR(1)			NOT NULL CHECK(ORIGN IN ('L','F')),
TYPE			CHAR(1)			NOT NULL CHECK(TYPE	IN ('U','G')),
)


INSERT INTO StudentMaster VALUES
(1 ,'Jane Doe' , 'L' , 'G')
INSERT INTO StudentMaster VALUES
(2, 'Hiroshi Tanaka', 'F', 'G'),
    (3, 'Maria Garcia', 'L', 'U'),
    (4, 'Chen Wei', 'F', 'U'),
    (5, 'David Lee', 'L', 'G'),
    (6, 'Fatima Al-Farsi', 'F', 'G'),
    (7, 'Samuel Jones', 'L', 'U'),
    (8, 'Emily Chen', 'L', 'U'),
    (9, 'Michael Brown', 'L', 'G'),
    (10, 'Anya Petrova', 'F', 'U'),
    (11, 'Carlos Ramirez', 'F', 'U'),
    (12, 'Li Na', 'F', 'G'),
    (13, 'Sophie Martin', 'L', 'G'),
    (14, 'Alexei Volkov', 'F', 'U'),
    (15, 'Sarah Miller', 'L', 'U'),
    (16, 'Kenji Sato', 'F', 'G'),
    (17, 'Jessica Brown', 'L', 'G'),
    (18, 'Omar Abdul', 'F', 'U'),
    (19, 'Chloe Dubois', 'L', 'U'),
    (20, 'Noah Fischer', 'L', 'U');

    SELECT * FROM StudentMaster 

    USE SCHOOL
    DROP TABLE  [dbo].[ENROLLMENTMASTER]

    -- ENROLLMENTMASTER

CREATE TABLE ENROLLMENTMASTER(                        
CID				INTEGER			FOREIGN KEY  References COURSMASTER(CID),
SID				TINYINT			FOREIGN KEY  References StudentMaster(SID),
DOE				DATETIME		NOT NULL,
FWF				BIT				NOT NULL,
GRADE			CHAR(1)			CHECK(GRADE IN ('O','A','B','C')),
);
SELECT * FROM ENROLLMENTMASTER


DROP TABLE ENROLLMENTMASTER



SELECT * FROM [dbo].[ENROLLMENTMASTER] WHERE SID = 3


SELECT TOP 1* FROM StudentMaster
SELECT *FROM [dbo].[COURSMASTER]
SELECT  TOP 1* FROM [dbo].[ENROLLMENTMASTER] 

-- LIST THE COURSE WISE TOTAL NO. OF  STUDENTS ENROLLED. PROVIDE THE INFORMATION ONLY FOR  STUDENTS OF FOREIGN AND ONLY IF THE EXCEED 10 



SELECT course_name, COUNT(*) AS total_foreign_students
FROM [dbo].[COURSMASTER] CM 
     JOIN [dbo].[ENROLLMENTMASTER] EM ON CM.CID=EM.CID
     JOIN   [dbo].[StudentMaster] SM ON EM.SID = SM.SID
WHERE ORIGN = 'F'
GROUP BY course_name
HAVING COUNT(*) > 10;

-- list the names of the students who have not enrolled for  Java?

SELECT NAME
FROM [dbo].[StudentMaster]
WHERE SID NOT IN ( SELECT EM.SID
                    FROM [dbo].[ENROLLMENTMASTER] EM
                        JOIN [dbo].[COURSMASTER] CM ON EM.CID= CM.CID
                        WHERE COURSE_NAME = 'JAVA'
)
--


select ' select  * FROM '+ NAME FROM SYS.TABLES

--list the name of The advanced course Where the enrollment by foreigner students in the highest 3TH
SELECT TOP 1 C.COURSE_NAME, COUNT(*) AS ForeignEnrollmentCount
FROM ENROLLMENTMASTER E
JOIN STUDENTMASTER S ON E.SID = S.SID
JOIN COURSEMASTER C ON E.CID = C.CID
WHERE S.NATIONALITY = 'Foreigner' AND C.COURSE_TYPE = 'Advanced'
GROUP BY C.COURSE_NAME
ORDER BY COUNT(*) DESC;


 select  * FROM COURSMASTER

SELECT TOP 10 CM.COURSE_NAME, COUNT(*) AS ForeignEnrollmentCount
FROM COURSMASTER CM 
     JOIN [dbo].[ENROLLMENTMASTER] EM ON CM.CID=EM.CID
     JOIN   [dbo].[StudentMaster] SM ON EM.SID = SM.SID
     WHERE ORIGN = 'F' AND CATEGORY = 'A'
     GROUP BY CM.COURSE_NAME
     ORDER BY COUNT(*) DESC;







   

--Who has 10th highest bank balance IN Indibank 
    SELECT * FROM ACCOUNT_MASTER
    WHERE CLEAR_BALANCE = ( SELECT MIN(CLEAR_BALANCE)
                        FROM ACCOUNT_MASTER
                        WHERE CLEAR_BALANCE IN ( SELECT DISTINCT TOP 10 CLEAR_BALANCE
                                                 FROM ACCOUNT_MASTER
                                                 ORDER BY CLEAR_BALANCE DESC
                                                 )
                            )

--List the name of the advanced course where the enrollment by foreign students is the highest.	

 SELECT DISTINCT COURSE_NAME
FROM ENROLLMENTMASTER EM
JOIN COURSMASTER CM ON EM.CID = CM.CID
WHERE CM.COURSE_NAME = (
    SELECT  MIN(COURSE_NAME)
    FROM (
        SELECT TOP 2 CM.COURSE_NAME
        FROM ENROLLMENTMASTER EM
        JOIN COURSMASTER CM ON EM.CID = CM.CID
        ORDER BY CM.CID DESC
    ) AS TopCourses
);



--List the names of students from StudentMaster who are enrolled in more than one course in ENROLLMENTMASTER.

SELECT S.SID,S.NAME, COUNT(E.SID) TOTAL
FROM STUDENTMASTER S 
JOIN ENROLLMENTMASTER E ON S.SID = E.SID
GROUP BY S.SID,S.NAME
HAVING COUNT(E.SID) > 1



--Find the course with the lowest enrollment count from COURSMASTER and ENROLLMENTMASTER, showing COURSE_NAME and the count.

SELECT C.COURSE_NAME,COUNT(E.CID) AS TOTAL
from COURSMASTER C JOIN ENROLLMENTMASTER E ON C.CID = E.CID
GROUP BY C.COURSE_NAME
ORDER BY COUNT(E.CID) ASC;



--Show the student names and course names from StudentMaster, ENROLLMENTMASTER, and COURSMASTER where the student is foreign ('F') and the course fee is over 2500.

SELECT S.NAME , C.COURSE_NAME
FROM StudentMaster S JOIN  
ENROLLMENTMASTER E ON E.SID = S.SID  
JOIN  COURSMASTER C ON C.CID = E.CID
WHERE S.ORIGN = 'F' AND C.FEE > 2500





--Update the Fee in COURSMASTER to 1000 for courses with no enrollments in ENROLLMENTMASTER.

UPDATE COURSMASTER 
SET FEE = 5
WHERE NOT EXISTS ( SELECT 1
					FROM ENROLLMENTMASTER E
					WHERE E.CID = COURSMASTER.CID
					)

SELECT C.CID,C.COURSE_NAME,C.FEE
FROM COURSMASTER C
LEFT JOIN ENROLLMENTMASTER E ON C.CID = E.CID
WHERE E.CID IS NULL





--List the total number of enrollments in ENROLLMENTMASTER for each month of the year 2025, using DATEPART.

SELECT DATENAME(MM,DOE) AS MONTH_NAME ,COUNT(*) AS TOTAL
FROM ENROLLMENTMASTER
WHERE DATEPART(YY,DOE) = 2025
GROUP BY DATENAME(MM,DOE)


SELECT
    DATENAME(MM, DOE) AS MonthName,
    COUNT(*) AS TOTAL
FROM
    ENROLLMENTMASTER
WHERE
    DATEPART(YY, DOE) = 2025
GROUP BY
    DATENAME(MM, DOE), 
    DATEPART(MM, DOE)  
ORDER BY
    DATEPART(MM, DOE) ASC; 


SELECT * FROM ENROLLMENTMASTER
SELECT * FROM COURSMASTER
SELECT * FROM StudentMaster


-- LIST THE COURSE WISE TOTAL NO. OF  STUDENTS ENROLLED. PROVIDE THE INFORMATION ONLY FOR  STUDENTS OF FOREIGN AND ONLY IF THE EXCEED 10 

SELECT C.COURSE_NAME,COUNT(E.SID) AS TOTAL 
FROM COURSMASTER C 
JOIN ENROLLMENTMASTER E ON E.CID = C.CID  
JOIN  StudentMaster S ON E.SID = S.SID
WHERE ORIGN = 'F'
GROUP BY C.COURSE_NAME 
HAVING COUNT(E.SID) > 10


--LIST THE NAMES OF THE STUDENT WHO HAVE NOT ENROLLED FOR JAVA COURSE.
SELECT  SID , NAME
FROM StudentMaster 
WHERE SID NOT IN ( SELECT SID 
                    FROM ENROLLMENTMASTER E 
                    JOIN COURSMASTER C ON C.CID = E.CID
                    WHERE COURSE_NAME = 'JAVA'
                )



SELECT * FROM ENROLLMENTMASTER
SELECT * FROM COURSMASTER
SELECT * FROM StudentMaster

--LIST THE NAME OF THE Advanced courses where the enrolment by foreign students is the highest.


WITH CTE AS (
SELECT  COURSE_NAME,COUNT(E.SID) AS TE,
		RANK() OVER (ORDER BY COUNT(E.SID) DESC) AS TFS
FROM    COURSMASTER C 
		JOIN ENROLLMENTMASTER E ON E.CID = C.CID JOIN StudentMaster S ON E.SID = S.SID 
WHERE	ORIGN = 'F'
GROUP BY  COURSE_NAME 
)
SELECT  COURSE_NAME,TE
FROM	CTE
WHERE	TFS = 1;

--LIST THE NAMES OF  STUDENTS WHO HAVE ENROLLED AT LEAST ONE BASED COURSE IN THE CURRENT MONTH  
SELECT		DISTINCT S.NAME
FROM		ENROLLMENTMASTER E JOIN StudentMaster S ON S.SID = E.SID JOIN COURSMASTER C ON C.CID = E.CID
WHERE		DATEPART(MM,E.DOE) = 10 
			AND CATEGORY = 'B' 
			AND DATEPART(YEAR, E.DOE)= 2025;

--LIST THE NAMES OF THE UNDERGRADUATED,LOCAL STUDENTS  WHO HAVE GOT A "C" GRADE IN ANY BASIC COURSE 
SELECT		DISTINCT S.NAME 
FROM		ENROLLMENTMASTER E 
			JOIN StudentMaster S ON S.SID = E.SID 
			JOIN COURSMASTER C ON C.CID = E.CID
WHERE		S.TYPE = 'U' 
			AND S.ORIGN = 'L' AND E.GRADE = 'C' AND C.CATEGORY = 'B'

--LIST THE NAMES OF THE COURSE WHICH NUMBER OF STUDENTS HAS  ENROLLED IN THE MONTH OF MAY 2020 

SELECT		C.COURSE_NAME, COUNT(E.SID) AS TOTAL 
FROM		ENROLLMENTMASTER E 
            JOIN StudentMaster S ON S.SID = E.SID 
			JOIN COURSMASTER C ON C.CID = E.CID
WHERE		DATEPART(MONTH,E.DOE) = 5 
			AND DATEPART(YEAR,E.DOE) = 2020
GROUP BY C.COURSE_NAME 


SELECT TOP 1 * FROM  ENROLLMENTMASTER ORDER BY SID DESC

INSERT INTO ENROLLMENTMASTER VALUES (116,15,'2020-05-26 16:48:04.010',0,'C')

CID, COURSE_NAME, Category, Fee
SELECT * FROM ENROLLMENTMASTER
SELECT * FROM COURSMASTER
SELECT * FROM StudentMaster

--List name, Numbers of enrolments and Probability of CourseS. Popularity has displayed as "high" if the number of enrolments is higher than 50 "Medium" if greater than equal to 20 and less than 50,"Low" if the number is less than 20.
SELECT C.COURSE_NAME,COUNT(E.SID) AS TE,
        CASE
            WHEN COUNT(E.SID) > 15 THEN 'HIGHER'
            WHEN COUNT(E.SID) >=10 AND COUNT(E.SID)<15 THEN 'MEDIUM'
            ELSE  'LOW'
        END AS Popularity
FROM ENROLLMENTMASTER E JOIN COURSMASTER C ON E.CID = C.CID
GROUP BY C.COURSE_NAME;

--LIST THE MOST RECENT ENROLMENT DETAILS WITH THE INFORMATION ON STUDENT NAME COURSE NAME AND AGE OF ENROLMENTS IN DAYS
SELECT TOP 1  S.NAME,C.COURSE_NAME,DATEDIFF(DAY,DOE,GETDATE()) AS NOOFDAYS
FROM		ENROLLMENTMASTER E JOIN StudentMaster S ON S.SID = E.SID JOIN COURSMASTER C ON C.CID = E.CID
ORDER BY DOE DESC;


--LIST THE NAME OF THE LOCAL STUDENTS WHO HAVE ENROLLED FOR EXACTLY 3 BASIC COURSES
SELECT       S.NAME 
FROM		ENROLLMENTMASTER E 
            JOIN StudentMaster S ON S.SID = E.SID 
            JOIN COURSMASTER C ON C.CID = E.CID
WHERE       S.ORIGN = 'L' 
            AND C.CATEGORY = 'B' 
GROUP BY S.NAME
HAVING COUNT(DISTINCT C.CID) = 3




SELECT * FROM ENROLLMENTMASTER
SELECT * FROM COURSMASTER
SELECT * FROM StudentMaster
--List the names of the course enrollment by all (HIGHER) student 

WITH CTE AS(
        SELECT  C.CID,C.COURSE_NAME, COUNT(E.SID) AS TOTAL,
                RANK() OVER (ORDER BY COUNT(E.SID)DESC)AS RK
        FROM    ENROLLMENTMASTER E 
                RIGHT JOIN COURSMASTER C ON C.CID = E.CID
        GROUP BY  C.CID,C.COURSE_NAME 
)
        SELECT CID,COURSE_NAME,TOTAL
        FROM CTE
        WHERE RK = 1;


    
    CID	COURSE_NAME	TOTAL
101	Computer Basics	17
103	Web Design Fundamentals	17

SELECT SID,NAME
FROM  StudentMaster 
WHERE SID NOT IN (SELECT SID 
                  FROM ENROLLMENTMASTER E JOIN COURSMASTER C ON C.CID = E.CID
                  WHERE COURSE_NAME = 'Computer Basics'
                  )


INSERT INTO ENROLLMENTMASTER VALUES (104,	4,	'2025-05-18 08:10:30.780',	0,	'C')

--List the names of the course enrollment by all (EVERY) student 

SELECT C.COURSE_NAME
FROM COURSMASTER C
LEFT JOIN ENROLLMENTMASTER E ON C.CID = E.CID
GROUP BY C.COURSE_NAME
HAVING COUNT(E.SID) = (SELECT COUNT(*) FROM StudentMaster);



SELECT * FROM ENROLLMENTMASTER
SELECT * FROM COURSMASTER
SELECT * FROM StudentMaster

--FOR Those enrolments for each fee have been WAIVED, PROVIDE THE NAME OF STUDENTS WHO HAVE GOT 'O' GRADE.
  SELECT    DISTINCT S.NAME
  FROM      StudentMaster S 
            JOIN ENROLLMENTMASTER E ON E.SID = S.SID
  WHERE     E.GRADE = 'O' AND  E.FWF = 1;


--LIST THE NAMES OF THE FOREIGN, UNDERGRADUATE STUDENTS WHO HAVE GOT GRADE C IN ANY BASIC COURSE 

SELECT      S.NAME
  FROM      StudentMaster S 
            JOIN ENROLLMENTMASTER E ON E.SID = S.SID 
            JOIN COURSMASTER C ON  E.CID = C.CID 
WHERE       S.ORIGN = 'F' AND S.TYPE = 'U' AND E.GRADE = 'C' 
            AND C.Category = 'B'

--List the course name total number of enrolment in the current month 

SELECT   course_name,COUNT(*) AS TOTAL
FROM    COURSMASTER C JOIN ENROLLMENTMASTER E ON C.CID = E.CID
WHERE       DATEPART(MM,DOE) = DATEPART(MM,GETDATE()) 
        AND DATEPART(YY,DOE)= DATEPART(YY,GETDATE())
GROUP  BY course_name
