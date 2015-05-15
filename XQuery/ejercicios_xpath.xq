(: XQuery main module :)


(: Ejercicio 1 :)

doc("courses.xml")//Title

(: Ejercicio 2 :)

doc("courses.xml")//Department//Chair//Last_Name

(: Ejercicio 3 :)

doc("courses.xml")//Course[attribute::Enrollment > 500]/Title

(: Ejercicio 4 :)

doc("courses.xml")//Department/Course/Prerequisites[Prereq = "CS106B"]/../../Title

(: Ejercicio 5 :)

doc("courses.xml")//Middle_Initial/../Last_Name

(: Ejercicio 6 :)

count(doc("courses.xml")//Course/Description[contains(., 'Cross-listed')])

(: Ejercicio 7 :)

sum(doc("courses.xml")//Department[@Code = "CS"]/Course/@Enrollment) 
div 
count(doc("courses.xml")//Department[@Code = "CS"]/Course/@Enrollment)

(: Ejercicio 8 :)

doc("courses.xml")//Course[@Enrollment > 100]/Description[contains(., 'system')]/../Instructors//Last_Name

(: Ejercicio 9 :)

doc("courses.xml")//Course[@Enrollment = max(//Course/@Enrollment)]/Title