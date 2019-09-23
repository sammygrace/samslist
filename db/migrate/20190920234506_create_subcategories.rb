class CreateSubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
    add_index :subcategories, :category_id
  end
end
