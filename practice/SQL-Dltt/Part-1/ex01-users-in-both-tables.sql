SELECT DISTINCT User_B.Login_ID AS Login, User_B.Full_name AS Name, (SELECT Max(v) 
   FROM (VALUES (User_A.Lastlogin), (User_B.LoginDate)) AS value(v)) AS 'Latest login date'
FROM User_B INNER JOIN User_A ON User_B.Login_ID=User_A.Login