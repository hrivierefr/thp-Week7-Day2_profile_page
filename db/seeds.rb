# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
	user = User.create!(
		name: Faker::Name.first_name,
		email: Faker::Internet.email,
		password: Faker::Name.last_name
		)
end

5.times do
	potin = Gossip.create!(
		author: User.find(rand(9)+1),
		content: Faker::Lorem.paragraph
		)
end

