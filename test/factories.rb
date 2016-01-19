FactoryGirl.define do
	factory :user do
		first_name "Josh"
		last_name "Woodward"
		email "testemail@school.edu"
		password "test"

		factory :advisor, class: 'Advisor' do
		end

		factory :worker, class: 'Worker' do
		end
	end

	factory :post do
		association :user, factory: :advisor
		message Faker::Hacker.say_something_smart
	end
end