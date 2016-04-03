# take 3 student_ids, ensuring randomization and uniqueness
student_ids = Student.all.pluck(:id).shuffle.take(3)
former_plans = ['Mechanical Engineering', 'Art History', 'Criminal Justice', 'Game Design & Development']
effective_terms = ['1113', '1125', '1358', '2188']

student_ids.each do |student_id|
	CopIn.create(
		student_id: student_id,
		former_plan: former_plans.sample,
		effective_term: effective_terms.sample
	)
end