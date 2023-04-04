class RemoveCategoriesFromCommercial < ActiveRecord::Migration[7.0]
  def change
    remove_column :commercials, :directed, :string
    remove_column :commercials, :montage, :string
  end
end
