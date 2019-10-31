class ChangeCityToCityOrProvince < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :city, :city_or_province
  end
end
