
10.times do 
  u = User.create(
    name: Faker::Name.name, 
    email: Faker::Internet.email,
    username: Faker::Internet.user_name,
    password: '123456',
    password_confirmation: '123456'
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
