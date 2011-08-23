# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Hobby.create [
	{name: 'Biking'},
	{name: 'Skiing'},
	{name: 'Watching Movies'}
]

Location.create [
	{name: 'Mountains'},
	{name: 'City'},
	{name: 'Cinema'}
]
