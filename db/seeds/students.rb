advisor_ids = Advisor.all.pluck(:id)
200.times {
	first_name = Faker::Name.first_name
	Student.create(
		advisor_id: advisor_ids.sample,
		first_name: first_name,
		middle_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: first_name + "@rit.edu",
		last_audit: Faker::Date.backward(365)
	)
}