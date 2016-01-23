#take 8 random students and create senior projects for them
student_ids = Student.all.pluck(:id).shuffle.take(8)

student_ids.each do |student_id|
	SeniorProject.create(student_id: student_id)
end
