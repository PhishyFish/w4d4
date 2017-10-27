# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
CatRentalRequest.destroy_all
User.destroy_all


user1 = User.new(username: 'Vickie', password: '1234567')
user2 = User.new(username: 'Henry', password: '1234567')
user3 = User.new(username: 'Jeff', password: '1234567')

user1.save
user2.save
user3.save

cat1 = Cat.new(birth_date: "2000-10-10", color: "brown", name: "Apple", sex: "M", description: "Epic description for the cat", user_id: user1.id)
cat2 = Cat.new(birth_date: "2002-10-10", color: "brown", name: "Peanut", sex: "M", description: "Epic description for the cat", user_id: user1.id)
cat3 = Cat.new(birth_date: "2004-10-10", color: "black", name: "Lemon", sex: "F", description: "Epic description for the cat", user_id: user2.id)
cat4 = Cat.new(birth_date: "2006-10-10", color: "black", name: "Pear", sex: "F", description: "Epic description for the cat", user_id: user2.id)
cat5 = Cat.new(birth_date: "2008-10-10", color: "orange", name: "Watermellon", sex: "M", description: "Epic description for the cat", user_id: user3.id)
cat6 = Cat.new(birth_date: "2008-10-10", color: "orange", name: "Grape", sex: "M", description: "Epic description for the cat", user_id: user3.id)
# debugger

cat1.save
cat2.save
cat3.save
cat4.save
cat5.save
cat6.save
rental1 = CatRentalRequest.new(cat_id: cat3.id, start_date: '2011-1-1'  , end_date: '2011-1-30', status: 'APPROVED', user_id: user1.id)
rental2 = CatRentalRequest.new(cat_id: cat3.id, start_date: '2011-1-15' , end_date: '2011-2-15', status: 'APPROVED', user_id: user1.id)
rental3 = CatRentalRequest.new(cat_id: cat1.id, start_date: '2011-3-1'  , end_date: '2011-3-15', user_id: user2.id)
rental4 = CatRentalRequest.new(cat_id: cat1.id, start_date: '2011-3-2'  , end_date: '2011-4-30', user_id: user2.id)
rental5 = CatRentalRequest.new(cat_id: cat1.id, start_date: '2011-4-15' , end_date: '2011-5-30', user_id: user3.id)



rental1.save
rental2.save
rental3.save
rental4.save
rental5.save
