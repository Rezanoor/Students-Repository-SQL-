SELECT s.StudentID, S.StudentName, Count(R.Assignment1Mark) AS NbrAssignment1, Count(R.Assignment2Mark) AS NbrAssignment2
FROM RESULT AS R, Student AS S
WHERE (R.StudentId=S.StudentID)
GROUP BY s.StudentID, S.StudentName
ORDER BY S.StudentName;
