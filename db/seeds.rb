puts "Deleting Data"
Fight.destroy_all
Arena.destroy_all
Fighter.destroy_all
Hospital.destroy_all
puts "Data deleted"
puts "Generating data"

character_names =  ["hercules", "adam", "benni", "jonas", "johnny cage", "gandalf", "legolas", "sauron", "aragon", "gimli", "alrock", "saroman"]
@addresses = ["Brienner Str. 50, München", "Königsplatz 1, München", "Neuhauser Straße 27, München", "Kardinal-Faulhaber-Straße 1, München", "Rosental 9, München", "Hohenzollernstraße 103, 80796 München", "Rosenheimer Str. 90, 81669 München", "Claudius-Keller-Straße 2, 81669 München", "Plinganserstraße 19, 81369 München", "Meglingerstraße 6, 81477 München", "Fürstenrieder Str. 54, 80686 München", "Kapuzinerstraße 8, 80337 München" ]
arenas = []

@urls = ['https://images.freeimages.com/images/large-previews/cba/alley-1-1233561.jpg', 'https://images.freeimages.com/images/large-previews/1e2/alley-1525007.jpg', 'https://cdn.pixabay.com/photo/2016/11/12/18/48/lost-places-1819465_1280.jpg',
          'https://cdn.shopify.com/s/files/1/1417/3230/products/DSC00247_Abandoned_Schoolhouse_1024x1024.jpg?v=1575931840', 'https://cdn.shopify.com/s/files/1/1417/3230/articles/RQ0A5259-Old-Town-Adams-Tennessee_1024x1024.jpg?v=1494900047', 'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/black-n-white-louvre-chuck-kuhn.jpg',
          'https://en.zopix.net/image_upload/174672-landschaften-lost-places-factory.jpg', 'https://www.wallpaperup.com/uploads/wallpapers/2013/12/10/189937/e782b55829222a08dad168d19947fa02-1000.jpg', 'https://c.pxhere.com/photos/86/f7/cologne_main_station_train_cologne_central_station_railway_railroad_track_travel_rail_traffic-786489.jpg!d',
          'https://c.pxhere.com/photos/26/d0/room_cellar_table_chairs_meeting_confrenece_basement_nobody-889799.jpg!d', 'https://images.pexels.com/photos/2796/black-and-white-beach-life-guard-safety.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
          'https://media.istockphoto.com/photos/big-ben-houses-of-parliament-with-rain-picture-id493303266?k=20&m=493303266&s=612x612&w=0&h=22zundNRmgsqBXVIItcN7ip3nhhBxWOt7mayORw_U8Q=']

counter = 0

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
    address: @addresses[counter],
    description: Faker::Lorem.paragraph,
    capacity: rand(2..10),
    fighter: fighter,
    image: @urls[counter]
  )
  arenas << arena

  Fight.create!(
    title: Faker::Restaurant.name,
    duration: rand(5..60),
    date: Faker::Date.between(from: '2012-09-23', to: '2014-09-25'),
    number_of_fighters: rand(5..9),
    weapons_allowed: true,
    fighter: fighter,
    arena: arenas.sample
  )

  counter += 1
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


Fighter.create!(
    age: rand(18..120),
    nickname: "The Lord",
    weight: rand(65..130),
    height: rand(150..220),
    arm_range: rand(40..80),
    email: "jesus@rippin.com",
    password: "1234567"
  )
