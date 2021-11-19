puts "Deleting Data"
Fight.destroy_all
Arena.destroy_all
Fighter.destroy_all
puts "Data deleted"
puts "Generating data"

character_names = ["hercules", "adam", "benni", "jonas", "johnny cage", "gandalf", "legolas", "sauron", "aragon", "gimli", "alrock", "saroman"]
addresses = ["Brienner Str. 50, München", "Königsplatz 1, München", "Neuhauser Straße 27, München", "Kardinal-Faulhaber-Straße 1, München", "Rosental 9, München", "Hohenzollernstraße 103, 80796 München", "Rosenheimer Str. 90, 81669 München", "Claudius-Keller-Straße 2, 81669 München", "Plinganserstraße 19, 81369 München", "Meglingerstraße 6, 81477 München", "Fürstenrieder Str. 54, 80686 München", "Kapuzinerstraße 8, 80337 München" ]

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
    address: addresses.sample,
    description: Faker::Lorem.paragraph,
    capacity: rand(2..10),
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
  puts "fighter created"
end

5.times do
  Hospital.create!(
    name: "#{Faker::Name.male_first_name} #{Faker::Name.last_name} Hospital",
    rating: [5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 2, 2, 1].sample ,
    address: "#{Faker::Address.street_name} #{Faker::Address.building_number} #{Faker::JapaneseMedia::OnePiece.location}",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
end

puts "Data generated"
