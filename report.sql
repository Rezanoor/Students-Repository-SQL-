SELECT  CO.CourseID as CourseID, S.StudentName AS StudentName, S.StudentState AS State, CO.CourseStartDate AS CourseStarted, CO.ClassEndDate AS CourseEnded, 'RO' as Reason
FROM RESULT AS R, STUDENT AS S, COURSE_OFFERING AS CO, BOOKING AS B
WHERE R.Grade='RO' And B.BookingId=S.bookingId And B.CourseID=CO.courseID And R.StudentID=S.StudentID;

UNION SELECT CO.CourseID as CourseID, S.StudentName AS StudentName, S.StudentState AS State, CO.CourseStartDate AS CourseStarted, CO.ClassEndDate AS CourseEnded, 'CourseAbsence'  as Reason
FROM STUDENT AS S, COURSE_OFFERING AS CO, Booking AS B
WHERE STUDENTID NOT IN(SELECT STUDENTID FROM RESULT) AND B.CourseID = CO.CourseID AND S.BookingID = B.BookingID;
