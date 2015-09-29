# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

n1 = Neighborhood.create( city: 'Oakland', name: 'Jack London Square')
n1.save!

u1 = User.create( email: 'aliviablount@gmail.com', password: 'admin123456789')
u1.save!
