# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Contact.create(
      {
                 name: Faker::Name.name,
                 age: Faker::Number.between(0,34),
      }
  )
end

5.times do
  Address.create(
      {
          line1: Faker::Address.street_address,
          line2: Faker::Address.secondary_address,
          zip: Faker::Number.between(10000,99999),
          stateCode: Faker::Address.state_abbr,
          contact: Contact.find(rand(1...Contact.all.size))
      }
  )
end

