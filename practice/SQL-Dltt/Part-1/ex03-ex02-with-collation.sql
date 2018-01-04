SELECT
  COALESCE(User_A.Login, User_B.Login_ID) COLLATE SQL_Latin1_General_Cp437_BIN AS Login,
  COALESCE(User_A.Name, User_B.Full_name) AS Name,
  (SELECT Max(v) FROM (VALUES (User_A.Lastlogin), (User_B.LoginDate)) AS value(v)) AS 'Latest login date'
FROM User_A FULL OUTER JOIN User_B ON User_A.Login=User_B.Login_ID
WHERE (User_A.Login IS NULL) OR (User_B.Login_ID IS NULL)