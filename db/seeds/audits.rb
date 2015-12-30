student_ids = Student.all.pluck(:id)
advisor_ids = Advisor.all.pluck(:id)

20.times do
	Audit.create(student_id: student_ids.sample, advisor_id: advisor_ids.sample, 
		date_performed: Faker::Date.backward(1000), comment: Faker::Hipster.sentence(6, false, 6))
end