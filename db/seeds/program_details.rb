#take 8 random students and create senior projects for them
student_ids = Student.all.pluck(:id).shuffle.take(8)
academic_plans = ['SOFTENG-BS',  'SOFTENG-MS']
application_domains = ['Computer Engineering', 'Computer Science', 'Industrial Engineering']
minors = ['Computing Security', 'Game Design & Development']
boolean_values = [true, false]

student_ids.each do |student_id|
  ProgramDetail.create(student_id: student_id, academic_plan: academic_plans.sample,
    application_domain: application_domains.sample,
    application_domain_submitted_date: Faker::Date.backward(1000),
    minor: minors.sample, minor_submitted_date: Faker::Date.backward(1000),
    honors: boolean_values.sample)
end
