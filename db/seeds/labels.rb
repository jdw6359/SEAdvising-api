# Create some labels
Label.create(name: "Red Flag", color: "#db1a1a",
	description: "A student that should be given extra attention")
Label.create(name: "Event Attendee", color: "#00cc20",
	description: "A student that should be invited to attend department events")
Label.create(name: "Alumni", color: "#1a2ddb",
	description: "A student that has graduated from the Software Engineering program")

labels = Label.all
students = Student.all

students.each do |student|
	student.labels<<(labels.sample(rand(labels.length)))
end