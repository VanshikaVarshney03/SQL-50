SELECT name,bonus
from Employee
Left join Bonus
ON Employee.empId=Bonus.empId
where bonus<1000 OR bonus IS NULL;