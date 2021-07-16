# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c = Category.find_or_create_by(name: "Outdoor")
# Party.create([
#     {name: "Dorito Festival", date: DateTime.now, category: c, budget: 10000, private: true},
#     {name: "Tuna Festival", date: DateTime.now, category: c,  budget: 20000, private: false}
# ])
p1 = Party.create(name: "Dorito Festival", date: DateTime.now, category: c, budget: 10000, private: true)
p2 = Party.create(name: "Tuna Festival", date: DateTime.now, category: c,  budget: 20000, private: false)

s1 = Supply.find_or_create_by(name: "forks")
s2 = Supply.find_or_create_by(name: "knives")

PartySupply.create(party: p1, supply: s1)
PartySupply.create(party: p2, supply: s2)
