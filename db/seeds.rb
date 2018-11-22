# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jonathan = User.create(email: 'jonathan@email.com', password: 'password')
survey = Survey.create(user: jonathan, token: SecureRandom.hex(rand(10)), name: 'Birthday')
roland = User.create(email: 'roland@email.com', password: 'password')

entry_jon = Entry.create(user: jonathan, address: "San Dimas", survey: survey, lat: 1.0, lon: 2.0)
entry_roland = Entry.create(user: roland, address: "Glendora", survey: survey,lat: 3.0, lon: 4.0)
entry_matt = Entry.create(user: nil, address: "91740", survey: survey, lat: 5.0, lon: 6.0)



