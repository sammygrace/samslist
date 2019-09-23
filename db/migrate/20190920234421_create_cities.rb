class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :county_id

      t.timestamps
    end
    add_index :cities, :county_id
  end
end
