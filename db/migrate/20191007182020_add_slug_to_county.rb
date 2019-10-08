class AddSlugToCounty < ActiveRecord::Migration[5.2]
  def change
    add_column :counties, :slug, :string
    add_index :counties, :slug
  end
end
