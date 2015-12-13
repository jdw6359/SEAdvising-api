student = Student.find(1)

Coop.create(student_id: student.id, term: "2151", weeks: 11, exception: false)
Coop.create(student_id: student.id, term: "2152", weeks: 14, exception: false)
Coop.create(student_id: student.id, term: "2158", weeks: 8, exception: true)