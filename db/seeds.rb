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
      password_confirmation: "123456"
    )
end
photo_array = [
  "dog_walker_bath.jpeg",
  "dog_walker_beach_run.jpeg"

]
users = User.all.sample(6)
users.each_with_index do |user, index|
  dog_walker = DogWalker.create(
    price: rand(10..50),
    description: Faker::TvShows::RickAndMorty.quote
    )
  file = File.open(photo_array[index])
  dog_walker.photo.attach(io: file, filename: photo_array[index], content_type: 'image/jpeg')
  dog_walker.user = user
  dog_walker.save!
end
