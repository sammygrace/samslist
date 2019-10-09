class AddSlugToSubcategory < ActiveRecord::Migration[5.2]
  def change
    add_column :subcategories, :slug, :string
    add_index :subcategories, :slug
  end
end
