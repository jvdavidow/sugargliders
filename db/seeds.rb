# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Just a couple users. You can reset the database and run the seed with `rake db:reset`
u1 = User.create(name: "Person 1")
u2 = User.create(name: "Person 2")
u3 = User.create(name: "Person 3")

# We can create a new relationship by inserting it into the relationship itself
u1.following << u2
u1.following << u3
u3.following << u2

# Or we can use the follows relationship can create a new follow instance
u2.follows.create(:following_id => u3.id)

puts "Person 1 is following: #{u1.following.map(&:name).join(" and ")}"
puts "Person 2 is following: #{u2.following.map(&:name).join(" and ")}"
puts "Person 3 is following: #{u3.following.map(&:name).join(" and ")}"


