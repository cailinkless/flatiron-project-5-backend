# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pillowman = Playbill.create(title: "The Pillowman", about: "We are proud to present this darkly comic dystopia.")
writer = Credit.create(name: "Martin MacDonough", role: "Playwright", bio: "Martin MacDonough is a famous modern playwright and screenwriter.", cast: false, playbill: pillowman)
director = Credit.create(name: "Cailín Kless", role: "Director", bio: "Ms. Kless is proud to have worked with this fantastic cast to bring a timely fable to life.", cast: false, playbill: pillowman)
kat = Credit.create(name: "Eric L. Grayson", role: "Katurian", bio: "He is an actor and a playwright", cast: true, playbill: pillowman)
mich = Credit.create(name: "Michael Goodwin", role: "Michal", bio: "He is a longtime theater performer, teacher, and tech director.", cast: true, playbill: pillowman)
ari = Credit.create(name: "Max Wahrenburg", role: "Ariel", bio: "Longtime writer and newcomer to the stage, he also owns a trucking business.", cast: true, playbill: pillowman)
tup = Credit.create(name: "Sionáin Kless", role: "Tupolski", bio: "Longtime actor and dancer, currently pursuing a degree in marriage and family therapy.", cast: true, playbill: pillowman)
