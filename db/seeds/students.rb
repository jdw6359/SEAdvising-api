advisor_ids = Advisor.all.pluck(:id)
student_types = ['TR', 'FR']
student_statuses = ['Inactive', 'COP', 'Suspended', 'CRP', 'LOA']
boolean_values = [true, false]

first_enrolled_terms = [1113, 1115, 1118, 1123, 1125, 1128]

50.times {
	first_name = Faker::Name.first_name
	middle_name = Faker::Name.first_name
	last_name = Faker::Name.last_name
	email = first_name[0] + last_name + "@rit.edu"

	#set the initial status to one of the values in student_statuses
	#override bad status with 'active', unless weighted random requires bad status
	status = student_statuses.sample
	status = 'Active' unless rand(4)==0

	first_enrolled_term = first_enrolled_terms.sample
	expected_graduation = first_enrolled_term + 40

	Student.create(
		advisor_id: advisor_ids.sample,
		first_name: first_name,
		middle_name: middle_name,
		last_name: last_name,
		email: email,
		student_type: student_types.sample,
		status: status, 
		com_sub_plan: boolean_values.sample,
		first_enrolled_term: first_enrolled_term,
		expected_graduation: expected_graduation,
	)
}