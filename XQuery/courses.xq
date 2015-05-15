(: XQuery main module :)

doc("courses.xml")//Course[@Enrollment = max(//Course/@Enrollment)]/Title