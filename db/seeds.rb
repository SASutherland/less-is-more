# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database..."
Favourite.destroy_all
Idea.destroy_all
User.destroy_all
puts "Cleared!"

puts "Creating users, ideas..."

ideaname1 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Brian",
    last_name: "Mac",
    email: "brian@fakemail.com",
    password: "password",
  )
)
file = URI.open("")
ideaname1.photo.attach(io: file, filename: "ideaname1.jpg", content_type: "image/jpg")
ideaname1.save!

ideaname2 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Janet",
    last_name: "Marsh",
    email: "janet@fakemail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname2.photo.attach(io: file, filename: "ideaname2.jpg", content_type: "image/jpg")
ideaname2.save!

ideaname3 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Dan",
    last_name: "Goodman",
    email: "dan@realmail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname3.photo.attach(io: file, filename: "ideaname3.jpg", content_type: "image/jpg")
ideaname3.save!

ideaname4 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Michael",
    last_name: "Loev",
    email: "mike@realmail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname4.photo.attach(io: file, filename: "ideaname4.jpg", content_type: "image/jpg")
ideaname4.save!

ideaname5 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Donna",
    last_name: "Hunter",
    email: "donna@realmail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname5.photo.attach(io: file, filename: "ideaname5.jpg", content_type: "image/jpg")
ideaname5.save!

ideaname6 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Sally",
    last_name: "Mantis",
    email: "sally@realmail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname6.photo.attach(io: file, filename: "ideaname6.jpg", content_type: "image/jpg")
ideaname6.save!

ideaname7 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Todd",
    last_name: "Gakke",
    email: "todd@realmail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname7.photo.attach(io: file, filename: "ideaname7.jpg", content_type: "image/jpg")
ideaname7.save!

ideaname8 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Lois",
    last_name: "Steele",
    email: "lois@realmail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname8.photo.attach(io: file, filename: "ideaname8.jpg", content_type: "image/jpg")
ideaname8.save!

ideaname9 = Idea.new(
  title: ,
  content: ,
  location: ,
  votes: ,
  category: ,
  subcategory: ,
  impact: ,
  user: User.create!(
    first_name: "Jake",
    last_name: "Payne",
    email: "jake@realmail.com",
    password: "password"
  )
)
file = URI.open("")
ideaname9.photo.attach(io: file, filename: "ideaname9.jpg", content_type: "image/jpg")
ideaname9.save!

puts "Done!"
