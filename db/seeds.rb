# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(
  email: 'oscar@ranchocustomsbrokers.com',
  first_name: 'Oscar', 
  last_name: 'Escalada', 
  roles: ['admin'], 
  password: 'azteca33',
  password_confirmation: 'azteca33'
)
admin.skip_confirmation!
admin.save!