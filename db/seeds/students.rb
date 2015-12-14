50.times {
	first_name = Faker::Name.first_name
	Student.create(
		first_name: first_name,
		last_name: Faker::Name.last_name,
		email: first_name + "@rit.edu",
		last_audit: Faker::Date.backward(365)
	)
}