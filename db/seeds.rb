puts "Deleting Data"
Fight.destroy_all
Arena.destroy_all
Fighter.destroy_all
puts "Data deleted"
puts "Generating data"

character_names = ["hercules", "adam", "benni", "jonas", "yair", "vero", "johnny cage", "gandalf", "consti", "legolas", "sauron", "aragon", "gimli", "alrock", "saroman"]

character_names.each do |character_name|
  fighter = Fighter.create!(
    age: rand(18..120),
    nickname: character_name,
    weight: rand(65..130),
    height: rand(150..220),
    arm_range: rand(40..80),
    email: Faker::Internet.email,
    password: "1234567"
  )

  arena = Arena.create!(
    address: Faker::Address.street_name,
    description: Faker::Lorem.paragraph,
    capacity: rand(1..10),
    fighter: fighter
  )

  Fight.create!(
    title: Faker::Restaurant.name,
    duration: rand(5..60),
    date: Faker::Date.between(from: '2012-09-23', to: '2014-09-25'),
    number_of_fighters: rand(5..9),
    weapons_allowed: true,
    fighter: fighter,
    arena: arena
  )
end

puts "Data generated"
