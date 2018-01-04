SELECT
  emp.Login AS 'Employee''s login',
  emp.Name AS 'Employee''s name',
  man.Login AS 'Manager''s login',
  man.Name AS 'Manager''s name'
FROM Workers AS emp
LEFT JOIN Workers AS man ON emp.ManagerLogin=man.Login
WHERE
  (man.ManagerLogin IS NULL) OR (emp.Login IS NOT NULL)
ORDER BY emp.Login ASC