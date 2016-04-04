student_ids = Student.all.pluck(:id)
terms = ['1113', '1125', '1358', '2188']
weeks = [5,10,12,15,20,25,30]

20.times do
  student_id = student_ids.sample
  Coop.create(student_id: student_id, company_name: Faker::Company.name,
  	term: terms.sample, weeks: weeks.sample)
end
