# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

places = ['Work and Class', 'Los Chingones', 'Dio Mio', 'Jax', 'The Populist', 'The Source', 'First Draft', 'Meadow Lark', 'Matchbox', '10 Barrel Brewing'];
places.each{|place| Place.create(name: place, address: "123 main st. Denver, CO", lat: rand(39.000000000...40.000000000), lon: (rand(104.000000000...105.000000000)*-1), description: "#{place} is a great restaurant.", category: "food", upvotes: rand(10...42))}
