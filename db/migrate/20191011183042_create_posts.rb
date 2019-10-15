class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :county_id
      t.integer :city_id
      t.integer :category_id
      t.integer :subcategory_id
      t.string :title
      t.string :slug
      t.integer :price_cents
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.string :description

      t.timestamps
    end
    add_index :posts, :county_id
    add_index :posts, :city_id
    add_index :posts, :category_id
    add_index :posts, :subcategory_id
    add_index :posts, :slug
  end
end
