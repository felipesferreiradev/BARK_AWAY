require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first
# felipe = User.new(full_name: "Felipe", email: "felipe@yay.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire", picture: "https://images.unsplash.com/photo-1611601303737-6496949997cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9nJTIwd2Fsa2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
# silvia = User.new(full_name: "silvia", email: "silvia@ole.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire", picture: "https://images.unsplash.com/photo-1540544515-75496d8e03e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
# sara = User.new(full_name: "sara", email: "sara@why.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire", picture: "https://images.unsplash.com/photo-1524549028671-c64980386279?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGRvZyUyMHdhbGtlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
# hao = User.new(full_name: "Hao", email: "hao@yep.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire", picture: "https://images.unsplash.com/photo-1656775872645-a8157357f540?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM0fHxkb2clMjB3YWxrZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")

# felipe.save!
# silvia.save!
# sara.save!
# hao.save!

# dogwalker1 = DogWalker.new(price: 10, user:felipe)
# dogwalker2 = DogWalker.new(price: 5, user:silvia)
# dogwalker3 = DogWalker.new(price: 8, user:sara)
# dogwalker4 = DogWalker.new(price: 9, user:hao)

# dogwalker1.save!
# dogwalker2.save!
# dogwalker3.save!
# dogwalker4.save!


# booking1 = Booking.new(date:Date.today, confirmed: false, dog_walker: dogwalker1, user: sara)

# booking1.save!

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

users = User.all.sample (6)
users.each do | user |
  DogWalker.create(
    price: rand(10..50), user: user
  )
end
