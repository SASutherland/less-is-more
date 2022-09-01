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
Chatroom.destroy_all
puts "Cleared!"

puts "Creating users, ideas..."

carpool = Idea.new(
  title: "Carpool to work",
  content: "Share a ride with my colleagues instead of us each driving individual cars.",
  location: "Toronto, Canada",
  votes: 0,
  category: "transport",
  subcategory: "car",
  impact: "25%",
  user: User.create!(
    first_name: "Brian",
    last_name: "Mac",
    email: "brian@fakemail.com",
    password: "password",
  )
)
# file = URI.open("")
# ideaname1.photo.attach(io: file, filename: "ideaname1.jpg", content_type: "image/jpg")
carpool.save!

work_from_home = Idea.new(
  title: "Home office",
  content: "Work remotely one day per week.",
  location: "Rotterdam, Netherlands",
  votes: 0,
  category: "transport",
  subcategory: "car",
  impact: "20%",
  user: User.create!(
    first_name: "Janet",
    last_name: "Marsh",
    email: "janet@fakemail.com",
    password: "password"
  )
)
# file = URI.open("")
# ideaname2.photo.attach(io: file, filename: "ideaname2.jpg", content_type: "image/jpg")
work_from_home.save!

poultry_and_pork = Idea.new(
  title: "Eat more poultry/pork",
  content: "Limit beef consumption and choose other meats instead.",
  location: "Budapest, Hungary",
  votes: 0,
  category: "food",
  subcategory: "beef",
  impact: "10%",
  user: User.create!(
    first_name: "Dan",
    last_name: "Goodman",
    email: "dan@realmail.com",
    password: "password"
  )
)
# file = URI.open("")
# ideaname3.photo.attach(io: file, filename: "ideaname3.jpg", content_type: "image/jpg")
poultry_and_pork.save!

skip_meat = Idea.new(
  title: "Move toward veganism",
  content: "Skip meat and choose a more plant-based diet.",
  location: "Amsterdam, Netherlands",
  votes: 0,
  category: "food",
  subcategory: "beef",
  impact: "30%",
  user: User.create!(
    first_name: "Michael",
    last_name: "Loev",
    email: "mike@realmail.com",
    password: "password"
  )
)
# file = URI.open("")
# ideaname4.photo.attach(io: file, filename: "ideaname4.jpg", content_type: "image/jpg")
skip_meat.save!

more_fish = Idea.new(
  title: "Eat more fish, less beef",
  content: "Reduce red meat in diet and replace with fish.",
  location: "Lisbon, Portugal",
  votes: 0,
  category: "food",
  subcategory: "beef",
  impact: "20%",
  user: User.create!(
    first_name: "Donna",
    last_name: "Hunter",
    email: "donna@realmail.com",
    password: "password"
  )
)
# file = URI.open("")
# ideaname5.photo.attach(io: file, filename: "ideaname5.jpg", content_type: "image/jpg")
more_fish.save!

electric_car = Idea.new(
  title: "Electric car",
  content: "Trade in my gasoline-based car for an electric car.",
  location: "Paris, France",
  votes: 0,
  category: "transport",
  subcategory: "car",
  impact: "50%",
  user: User.create!(
    first_name: "Sally",
    last_name: "Mantis",
    email: "sally@realmail.com",
    password: "password"
  )
)
# file = URI.open("")
# ideaname6.photo.attach(io: file, filename: "ideaname6.jpg", content_type: "image/jpg")
electric_car.save!

lower_home_heating = Idea.new(
  title: "Decrease home heating",
  content: "Reduce the temperature inside my home by 1 degree Celsius during winter.",
  location: "Edinburgh, United Kingdom",
  votes: 0,
  category: "home",
  subcategory: "heating",
  impact: "10%",
  user: User.create!(
    first_name: "Todd",
    last_name: "Gakke",
    email: "todd@realmail.com",
    password: "password"
  )
)
# file = URI.open("")
# ideaname7.photo.attach(io: file, filename: "ideaname7.jpg", content_type: "image/jpg")
lower_home_heating.save!

holiday_train = Idea.new(
  title: "Take a holiday by train",
  content: "Travel by train instead of an airplane during my next holiday.",
  location: "Berlin, Germany",
  votes: 0,
  category: "leisure",
  subcategory: "travel",
  impact: "10%",
  user: User.create!(
    first_name: "Lois",
    last_name: "Steele",
    email: "lois@realmail.com",
    password: "password"
  )
)
# file = URI.open("")
# ideaname8.photo.attach(io: file, filename: "ideaname8.jpg", content_type: "image/jpg")
holiday_train.save!

Idea.all.each do |idea|
  Chatroom.create(
    name: idea.title,
    idea: idea
  )
end

# ideaname9 = Idea.new(
#   title: ,
#   content: ,
#   location: ,
#   votes: ,
#   category: ,
#   subcategory: ,
#   impact: ,
#   user: User.create!(
#     first_name: "Jake",
#     last_name: "Payne",
#     email: "jake@realmail.com",
#     password: "password"
#   )
# )
# file = URI.open("")
# ideaname9.photo.attach(io: file, filename: "ideaname9.jpg", content_type: "image/jpg")
# ideaname9.save!

puts "Done!"
