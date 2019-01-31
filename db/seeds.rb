# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#Create users
require 'faker'

10.times do
  city = City.create!(name: Faker::Address.city, zip: Faker::Address.zip)
end

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.number(2), city_id: City.all.sample.id)
end

20.times do
  potin = Potin.create!(user_id: User.all.sample.id, content: Faker::Lorem.sentence, city_id: City.all.sample.id)
end

10.times do
  tag = Tag.create!(potin_id: Potin.all.sample.id, name: Faker::StarWars.specie)
end

20.times do
  comment = Comment.create!(user_id: User.all.sample.id, content: Faker::StarWars.quote, potin_id: Potin.all.sample.id)
end

20.times do
  like = Like.create!(user_id: User.all.sample.id, potin_id: Potin.all.sample.id)
end

20.times do
  sub_comment = SubComment.create!(user_id: User.all.sample.id, content: Faker::StarWars.quote, comment_id: Comment.all.sample.id)
end

10.times do
  message = Message.create!(sender_id: User.all.sample.id, recipient_id: User.all.sample.id, content: Faker::StarWars.quote)
end