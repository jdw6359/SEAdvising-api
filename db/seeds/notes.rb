student_ids = Student.all.pluck(:id)
user_ids = User.all.pluck(:id)

20.times do
	Note.create(student_id: student_ids.sample, user_id: user_ids.sample, 
		message: Faker::Hipster.sentence(6, false, 6))
end