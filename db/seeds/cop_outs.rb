# take 3 student_ids, ensuring randomization and uniqueness
student_ids = Student.all.pluck(:id).shuffle.take(3)
codes = ['A','B','C','D','E','F']
new_plans = ['Mechanical Engineering', 'Art History', 'Criminal Justice', 'Game Design & Development']
effective_terms = ['1113', '1125', '1358', '2188']
application_statuses = ['Applied', 'Accepted', 'Rejected']

student_ids.each do |student_id|
	CopOut.create(
		student_id: student_id,
		code: codes.sample, 
		new_plan: new_plans.sample, 
		effective_term: effective_terms.sample, 
		application_status: application_statuses.sample
	)
end