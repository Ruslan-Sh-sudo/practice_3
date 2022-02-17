  SELECT * 
    FROM humanresources.department
   WHERE groupname LIKE '%Research%'
ORDER BY departmentid DESC;
 
SELECT businessentityid, jobtitle, birthdate, gender 
  FROM humanresources.employee
 WHERE businessentityid > 50
   AND businessentityid <= 100;
   
SELECT businessentityid, jobtitle, birthdate, gender 
  FROM humanresources.employee
 WHERE DATE_PART('year', birthdate) = 1980
    OR DATE_PART('year', birthdate) = 1990;
  
SELECT * FROM humanresources.employeedepartmenthistory

/*created additional functions to understand the query better*/
  SELECT businessentityid, shiftid, COUNT(*)
    FROM humanresources.employeedepartmenthistory
GROUP BY businessentityid, shiftid
  HAVING COUNT(*) >= 2
ORDER BY businessentityid;