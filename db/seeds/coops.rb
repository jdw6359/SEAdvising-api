student_ids = Student.all.pluck(:id)

20.times do
  student_id = student_ids.sample
  Coop.create(student_id: student_id, company_name: Faker::Company.name)
end
