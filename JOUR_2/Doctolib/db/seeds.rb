# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    30.times do
        Physician.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.postcode, city_id: rand(1..30))
    end

    30.times do
        Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..30))
    end

    30.times do
        Appointment.create(appointment_date: DateTime.now, physician_id: rand(1..30), patient_id: rand(1..30), city_id: rand(1..30))
    end

    30.times do
        City.create(city_name: Faker::Address.city, physician_id: rand(1..30), patient_id: rand(1..30), appointment_id: rand(1..30))
    end

    30.times do
        Speciality.create(specialit: Faker::Hacker.noun)
    end





