# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database..."
# Favourite.destroy_all
# Idea.destroy_all
# User.destroy_all
# Chatroom.destroy_all
Donation.destroy_all
puts "Cleared!"

# puts "Creating users, ideas..."

# carpool = Idea.new(
#   title: "Carpool to work",
#   content: "Share a ride with my colleagues instead of driving four cars.",
#   location: "Toronto, Canada",
#   votes: 0,
#   category: "transport",
#   subcategory: "car",
#   impact: 25,
#   photo: "https://images.unsplash.com/photo-1597685204565-110abf469a1e?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#   user: User.create!(
#     first_name: "Brian",
#     last_name: "Mac",
#     email: "brian@fakemail.com",
#     password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1597685204565-110abf469a1e?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
# carpool.photo.attach(io: file, filename: "carpool.jpg", content_type: "image/jpg")
# carpool.save!

# work_from_home = Idea.new(
#   title: "Home office",
#   content: "Work remotely one day per week.",
#   location: "St. John's, Newfoundland",
#   votes: 0,
#   category: "transport",
#   subcategory: "car",
#   impact: 20,
#   photo: "https://images.unsplash.com/photo-1591382696684-38c427c7547a?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#   user: User.create!(
#     first_name: "Janet",
#     last_name: "Marsh",
#     email: "janet@fakemail.com",
#     password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1591382696684-38c427c7547a?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
# work_from_home.photo.attach(io: file, filename: "work_from_home.jpg", content_type: "image/jpg")
# work_from_home.save!

# more_fish = Idea.new(
#   title: "Eat more fish, less beef",
#   content: "Reduce red meat in diet and replace with fish.",
#   location: "Jakarta, Indonesia",
#   votes: 0,
#   category: "food",
#   subcategory: "beef",
#   impact: 20,
#   photo: "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#   user: User.create!(
#     first_name: "Donna",
#     last_name: "Hunter",
#     email: "donna@realmail.com",
#     password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
# more_fish.photo.attach(io: file, filename: "more_fish.jpg", content_type: "image/jpg")
# more_fish.save!

# electric_car = Idea.new(
#   title: "Buy an electric car",
#   content: "Trade in my gasoline-based car for an electric car.",
#   location: "Moscow, Russia",
#   votes: 0,
#   category: "transport",
#   subcategory: "car",
#   impact: 50,
#   photo: "https://images.unsplash.com/photo-1594535182308-8ffefbb661e1?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80",
#   user: User.create!(
#     first_name: "Sally",
#     last_name: "Mantis",
#     email: "sally@realmail.com",
#     password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1594535182308-8ffefbb661e1?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80")
# electric_car.photo.attach(io: file, filename: "electric_car.jpg", content_type: "image/jpg")
# electric_car.save!

# lower_home_heating = Idea.new(
#   title: "Decrease home heating",
#   content: "Reduce the temperature in my home by 1 degree Celsius during winter.",
#   location: "Edinburgh, United Kingdom",
#   votes: 0,
#   category: "home",
#   subcategory: "heating",
#   impact: 10,
#   photo: "https://images.unsplash.com/photo-1619140099965-06d74aaf51fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#   user: User.create!(
#     first_name: "Todd",
#     last_name: "Gakke",
#     email: "todd@realmail.com",
#     password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1619140099965-06d74aaf51fa?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
# lower_home_heating.photo.attach(io: file, filename: "lower_home_heating.jpg", content_type: "image/jpg")
# lower_home_heating.save!

# holiday_train = Idea.new(
#   title: "Take a holiday by train",
#   content: "Travel by train instead of an airplane during my next holiday.",
#   location: "Shanghai, China",
#   votes: 0,
#   category: "leisure",
#   subcategory: "travel",
#   impact: 10,
#   photo: "https://images.unsplash.com/photo-1562078809-7ef447ae26c6?ixlib=rb-1.2.1&ixid=MnwxMjA3[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#   user: User.create!(
#   first_name: "Lois",
#   last_name: "Steele",
#   email: "lois@realmail.com",
#   password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1562078809-7ef447ae26c6?ixlib=rb-1.2.1&ixid=MnwxMjA3[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
# holiday_train.photo.attach(io: file, filename: "holiday_train.jpg", content_type: "image/jpg")
# holiday_train.save!

# poultry_and_pork = Idea.new(
#   title: "Eat more poultry/pork",
#   content: "Limit beef consumption and choose other meats instead.",
#   location: "Nairobi, Kenya",
#   votes: 0,
#   category: "food",
#   subcategory: "beef",
#   impact: 10,
#   photo: "https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?ixlib=rb1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1013&q=80",
#   user: User.create!(
#     first_name: "Dan",
#     last_name: "Goodman",
#     email: "dan@realmail.com",
#     password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?ixlib=rb1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1013&q=80")
# poultry_and_pork.photo.attach(io: file, filename: "poultry_and_pork.jpg", content_type: "image/jpg")
# poultry_and_pork.save!

# skip_meat = Idea.new(
#   title: "Move toward veganism",
#   content: "Skip meat and choose a more plant-based diet.",
#   location: "Buenos Aires, Argentina",
#   votes: 0,
#   category: "food",
#   subcategory: "beef",
#   impact: 30,
#   photo: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#   user: User.create!(
#     first_name: "Michael",
#     last_name: "Loev",
#     email: "mike@realmail.com",
#     password: "password"
#   )
# )
# file = URI.open("https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxM[…]90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
# skip_meat.photo.attach(io: file, filename: "skip_meat.jpg", content_type: "image/jpg")
# skip_meat.save!

# Idea.all.each do |idea|
#   Chatroom.create(
#     name: idea.title,
#     idea: idea
#   )
# end

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

# puts "Creating chatroom for each idea"
# Idea.all.each do |idea|
#   Chatroom.create!(idea: idea, name: idea.title)
# end

puts "Creating donations"
Donation.create!(
  name: "Small donation",
  price: 1000
)

Donation.create!(
  name: "Medium donation",
  price: 2000
)

Donation.create!(
  name: "Huge donation",
  price: 5000
)

puts "Done!"
