# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(name: Faker::Name.name, description: Faker::Lorem.sentences, email: Faker::Internet.email, age: Faker::Number.number(digits: 2))
end

20.times do
    Tweet.create(content: Faker::Lorem.sentences, author_id: rand(1..10), liker_id: rand(1..10))
end

17.times do
    Follow.create(follower_id: rand(1..10), following_id: rand(1..10))
end

15.times do
    PrivateMessage.create(content: Faker::Lorem.paragraph, sender_id: rand(1..10), recipient_id: rand(1..10))
end


