FactoryGirl.define do
	factory :user do
		first_name Faker::Name.first_name
		last_name Faker::Name.last_name
		email Faker::Name.first_name + Faker::Name.last_name + "@rit.edu"
		password "test"

		factory :advisor, class: 'Advisor' do
		end

		factory :worker, class: 'Worker' do
		end
	end

	factory :student do
		email Faker::Name.first_name + Faker::Name.last_name + "@rit.edu"
		first_name Faker::Name.first_name
		last_name Faker::Name.last_name
	end

	factory :post do
		association :user, factory: :advisor
		message Faker::Hacker.say_something_smart
	end
end