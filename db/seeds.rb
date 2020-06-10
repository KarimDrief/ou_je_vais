require "open-uri"

puts "Cleaning database..."
Country.destroy_all

puts " Creating country"

file = URI.open('https://res.cloudinary.com/dm8m3jm1q/image/upload/v1591791945/aron-van-de-pol-tZDtyUrYrFU-unsplash_jowmpa.jpg')
country = Country.new(name: 'England', description: "The land of hope and glory", quarantine_rules:"You got fourteen days of quarantine when you arrive on the territory. Be patient !",
  active_quarantine: 14)
country.photo.attach(io: file, filename: 'england.png', content_type: 'image/png')
country.save

puts "Created #{country.name}"
puts "Finished"
