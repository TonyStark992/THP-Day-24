require 'faker'


# Génération de 10 cities
10.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

# Génération d'1 user Anonymous
user = User.create(first_name: "Anne", last_name: "Aunime", password: "anonim", city_id: 1)


# Génération de 10 users
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::GameOfThrones.quote, email: Faker::Internet.email, age: Faker::Number.within(range: 15..45), city_id: City.pluck(:id).shuffle.first, password: Faker::Lorem.characters(number: (6..10)))
end

# Génération de 20 gossips
20.times do
  gossip = Gossip.create!(title: Faker::Lorem.characters(number: (3..14)), content: Faker::ChuckNorris.fact, user_id: User.pluck(:id).shuffle.first)
end
