# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Link.delete_all

andre = User.create name: "Andre 3000"
bill = User.create name: "Bill Murray"
leroy = User.create name: "Leroy Jenkins"

Link.create title: "Baller Status", url: "https://haharadical.files.wordpress.com/2012/07/andre-as-love-gangster.jpeg", user: andre, vote: 1
Link.create title: "Murray is the Master", url: "http://sheamagazine.com/wp-content/uploads/2013/09/bill-murray.jpg", user: bill, vote: 2
Link.create title: "back in my day", url: "http://i.imgur.com/OPf6O9K.png", user: leroy, vote: 3
Link.create title: "still running", url: "http://www.imdb.com/name/nm0000195/", user: bill, vote: 7
