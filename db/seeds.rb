# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
Walker.destroy_all
Walk.destroy_all
Owner.destroy_all
Med.destroy_all

# Walker.create!(name: "Arlee Barnes", bio: "I love every dog!", years_experience: 5)
arlee = Walker.create!(name: "Arlee Barnes", bio: "I love every dog!", years_experience: 5)
alex = Walker.create!(name: "Alex Bamiagis", bio: "My wife has a dog, so I get it.", years_experience: 10)
maggie = Walker.create!(name: "Maggy Dodson", bio: "I walk all of the dogs in the Madison.", years_experience: 4)
abby = Walker.create!(name: "Abby Narges", bio: "My family used to have two dogs and I cared for them.", years_experience: 2)

# Owner.create!(name: "Kristin", username: "koberlander", password: "goodPassword" )
kristin = Owner.create!(name: "Kristin", username: "koberlander", password: "maxwell")
eric = Owner.create!(name: "Eric", username: "ericman", password: "s,fjkgh;sfgh" )
jon = Owner.create!(name: "Jon", username: "jonton", password: "kuytflugdluyf" )
bobby = Owner.create!(name: "Bob", username: "probbob", password: "hmgfluyfluy" )

# Dog.create!(name: "Buster", age: 12, gender: "Male", owner: bobby)
buster = Dog.create!(name: "Buster", age: 12, gender: "Male", owner: kristin)
max = Dog.create!(name: "Max", age: 11, gender: "Male", owner: kristin)
rusty = Dog.create!(name: "Rusty", age: 10, gender: "Male", owner: bobby)
tipper = Dog.create!(name: "Tipper", age: 11, gender: "Male", owner: bobby)
sparky = Dog.create!(name: "Sparky", age: 1, gender: "Male", owner: bobby)
maddie = Dog.create!(name: "Maddie", age: 8, gender: "Female", owner: eric)
gidge = Dog.create!(name: "Gidget", age: 3, gender: "Female", owner: jon)

# Walk.create!(walker_id: 1, dog_id: 1)
monday_afternoon = Walk.create!(walker_id: 1, dog_id: 1, walk_length: 10)
monday_morning = Walk.create!(walker_id: 2, dog_id: 2, walk_length: 10)
tuesday_morning = Walk.create!(walker_id: 3, dog_id: 3, walk_length: 20)
tuesday_afternoon = Walk.create!(walker_id: 4, dog_id: 6, walk_length: 30)
wednesday_morning = Walk.create!(walker_id: 2, dog_id: 2, walk_length: 10)
wednesday_afternoon = Walk.create!(walker_id: 1, dog_id: 5, walk_length: 20)
thursday_morning = Walk.create!(walker_id: 3, dog_id: 3, walk_length: 10)
friday_afternoon = Walk.create!(walker_id: 1, dog_id: 4, walk_length: 20)

# Med.create!(name: "Gabapentin", amount: 100, dosing_sched: "2x per day", notes: "Gets one pill with meal in morning and afternoon", dog_id: 1)
gabapentin = Med.create!(name: "Gabapentin", amount: 1, dosing_sched: "2x per day", notes: "Gets one pill with meal in morning and afternoon for neck pain", dog_id: 2)
dasuquin = Med.create!(name: "Dasuquin", amount: 1, dosing_sched: "1x per day", notes: "Gets one chew with morning meal for joint pain", dog_id: 2)
glandex = Med.create!(name: "Glandex", amount: 1, dosing_sched: "1x per day", notes: "Gets one chew with morning meal for gastrointestinal health", dog_id: 2)
benazepril = Med.create!(name: "Benazepril", amount: 1, dosing_sched: "2x per day", notes: "Gets one pill with meal in morning and afternoon for heart health", dog_id: 3)
heartgard = Med.create!(name: "Heartgard", amount: 1, dosing_sched: "1x per month", notes: "Gets one chew on the 15th day of ever month", dog_id: 4)
frontline = Med.create!(name: "Frontline", amount: 1, dosing_sched: "1x per month", notes: "Gets one vial between shoulder blades on the 15th every month ffor flea and tick prevention", dog_id: 4)
tacrolimus = Med.create!(name: "Tacrolimus", amount: 1, dosing_sched: "1 drop per eye 2x per day", notes: "One drop per eye 2x per day for chronic dry eye", dog_id: 1)
