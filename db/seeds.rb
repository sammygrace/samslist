# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

raw = IO.read("db/data.json")
json = JSON.parse(raw)

json["counties"].each_pair do |county_name, city_names|
  county = County.create ({
    name: county_name
  })

  city_names.each do |city_name|
    City.create ({
      name: city_name,
      county_id: county.id
    })
  end
end

json["categories"].each_pair do |category_name, subcategory_names|
  category = Category.create ({
    name: category_name
  })

  subcategory_names.each do |subcategory_name|
    Subcategory.create ({
      name: subcategory_name,
      category_id: category.id
    })
  end
end

1000.times do
  county = County.all.sample
  category = Category.all.sample
  Post.create({
    county_id: county.id,
    city_id: City.where(county_id: county.id).sample.id,
    category_id: category.id,
    subcategory_id: Subcategory.where(category_id: category.id).sample.id,
    title: Faker::Commerce.product_name,
    street_address: Faker::Address.street_address,
    city_or_province: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    description: Faker::Lorem.paragraph(sentence_count: 20),
    email: Faker::Internet.email,
    price_cents: Faker::Number.within(range: 0..200),
    phone: Faker::PhoneNumber.phone_number,
  })
end

Post.all.each do |post|
  Faker::Number.within(range: 3..8).times do
    number = Faker::Number.within(range: 1..500)
    file = "#{number}.png"
    path = "db/photos/#{file}"
    post.photos.attach(io: File.open(path), filename: file)
  end
end
