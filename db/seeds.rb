require "open-uri"


DogWalker.destroy_all
User.destroy_all

silvia = User.new(
  email: 'silvianeves@gmail.com',
  password: '123456',
  full_name: 'Silvia Neves',
  dog_breed: 'Mix raced',
  city: 'London',
  introduction: 'Nothing makes me happier than stroll around with a pack of doggies'
  )

avatar_silvia = URI.open("https://avatars.githubusercontent.com/u/104970865?v=4")
silvia.photo.attach(io: avatar_silvia, filename: 'avatar_silvia.png', content_type: 'image/png')
silvia.save!

hao = User.new(
  email: 'haowang@gmail.com',
  password: '123456',
  full_name: 'Hao Wang',
  dog_breed: 'Shiba inu',
  city: 'Munich',
  introduction: 'Walking doggies has been one my favourite types of exercise'
    )

  avatar_hao = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657878458/qzmmwyrmpiyvnzy9qiyw.jpg")
  hao.photo.attach(io: avatar_hao, filename: 'avatar_hao.png', content_type: 'image/png')
  hao.save!

  sara = User.new(
    email: 'saranusair@gmail.com',
    password: '123456',
    full_name: 'Sara Nusair',
    dog_breed: 'Rottweiler',
    city: 'Amman',
    introduction: 'When surronded by paw friends, I feel always loved'
  )

avatar_sara = URI.open("https://avatars.githubusercontent.com/u/108683013?v=4")
sara.photo.attach(io: avatar_sara, filename: 'avatar_sara.png', content_type: 'image/png')
sara.save!


dog_walker_1 = DogWalker.new(
  price: 20,
  description: "A fast paced walk throught out london's green parks",
  user_id: silvia.id
)
walk_in_woods = URI.open('dog_walker_woods.jpeg')
dog_walker_1.photo.attach(io: walk_in_woods, filename: 'dog_walker_woods.jpeg', content_type: 'image/jpeg')
dog_walker_1.save!


dog_walker_2 = DogWalker.new(
  price: 30,
  description: "A amazing walk, at the beach, follow by a warm shower",
  user_id: sara.id
)
walk_at_beach = URI.open('dog_walker_bath.jpeg')
dog_walker_2.photo.attach(io: walk_at_beach, filename: 'dog_walker_bath.jpeg', content_type: 'image/jpeg')
dog_walker_2.save!

dog_walker_3 = DogWalker.new(
  price: 35,
  description: "Nothing like a skate-walk, for a good leg stretch",
  user_id: silvia.id
)
walk_in_skate = URI.open('dog_walker_skater.jpeg')
dog_walker_3.photo.attach(io: walk_in_skate, filename: 'dog_walker_skater.jpeg', content_type: 'image/jpeg')
dog_walker_3.save!

dog_walker_4 = DogWalker.new(
  price: 22,
  description: "If you like walks, pinacoladas and sunsets at the beach",
  user_id: hao.id
)
walk_in_sunsets = URI.open('dog_walker_beach_run.jpeg')
dog_walker_4.photo.attach(io: walk_in_sunsets, filename: 'dog_walker_beach_run.jpeg', content_type: 'image/jpeg')
dog_walker_4.save!

dog_walker_5 = DogWalker.new(
  price: 33,
  description: "Need to work on your doggie glutes? nothing like a hike!",
  user_id: hao.id
)
walk_up_hike = URI.open('dog_walker_hike.jpeg')
dog_walker_5.photo.attach(io: walk_up_hike, filename: 'dog_walker_hike.jpeg', content_type: 'image/jpeg')
dog_walker_5.save!

dog_walker_6 = DogWalker.new(
  price: 44,
  description: "The walk that follows, Hollywood sunsets",
  user_id: sara.id
)
walk_in_hollywood = URI.open('dog_walker_hollywood.jpeg')
dog_walker_6.photo.attach(io: walk_in_hollywood, filename: 'dog_walker_hollywood.jpeg', content_type: 'image/jpeg')
dog_walker_6.save!

puts "Done!"




# 10.times do
#   User.create!(
#       full_name: Faker::Name.name,
#       email: Faker::Internet.email,
#       city: Faker::Address.city,
#       dog_breed: Faker::Creature::Dog.breed,
#       picture: "",
#       password: "123456",
#       password_confirmation: "123456"
#     )
# end
# photo_array = [
#   "dog_walker_bath.jpeg",
#   "dog_walker_beach_run.jpeg"

# ]
# users = User.all.sample(6)
# users.each_with_index do |user, index|
#   dog_walker = DogWalker.create(
#     price: rand(10..50),
#     description: Faker::TvShows::RickAndMorty.quote
#     )
#   file = File.open(photo_array[index])
#   dog_walker.photo.attach(io: file, filename: photo_array[index], content_type: 'image/jpeg')
#   dog_walker.user = user
#   dog_walker.save!
# end
