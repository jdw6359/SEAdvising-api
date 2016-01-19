user_ids = User.all.pluck(:id)

10.times do
	Post.create(user_id: user_ids.sample, message: Faker::Hacker.say_something_smart)
end