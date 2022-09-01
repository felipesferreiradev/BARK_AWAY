
require "faker"

# generate 20 use
DogWalker.destroy_all
User.destroy_all


10.times do
  User.create!(
      full_name: Faker::Name.name,
      email: Faker::Internet.email,
      city: Faker::Address.city,
      dog_breed: Faker::Creature::Dog.breed,
      picture: "",
      password: "123456",
      password_confirmation: "123456",
  )
end
users = User.all.sample (6)
users.each do | user |
  DogWalker.create(
    price: rand(10..50), user: user,
    description: Faker::TvShows::RickAndMorty.quote,
  )
end
