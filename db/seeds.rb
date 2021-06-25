# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.create([
    {name: "Dorito Festival", date: DateTime.now, category: "Outdoor", supplies: "Forks, Spoons", budget: 10000, private: true},
    {name: "Tuna Festival", date: DateTime.now, category: "Outdoor", supplies: "Grill, Forks", budget: 20000, private: false}
])
