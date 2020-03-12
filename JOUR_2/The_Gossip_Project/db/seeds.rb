# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
    City.create(name: Faker::Address.city, postal_code: Faker::Address.postcode)
end

10.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.number(digits: 2), city_id: rand(1..10))
end

20.times do
    Gossip.create(title: Faker::Address.city, content: Faker::Lorem.sentence, user_id: rand(1..10))
end

10.times do
    Tag.create(title: "#"+Faker::Lorem.word)
end

PrivateMessage.create(content: Faker::Lorem.sentence, sender_id: 2, recipient_id: 7)


