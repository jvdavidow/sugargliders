10.times do 
  u = User.create(
    name: Faker::Name.name, 
    username: Faker::Internet.user_name
  )
  10.times do
    r = u.readings.create(
      post: Faker::Lorem.paragraph, 
      glucose_reading: rand(160)
    )
    r.update_attribute(:created_at, rand(30).days.ago)
  end
end

puts "#{User.count} Users Created"
