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
