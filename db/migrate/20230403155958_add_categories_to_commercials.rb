class AddCategoriesToCommercials < ActiveRecord::Migration[7.0]
  def change
    add_column :commercials, :producer, :string
    add_column :commercials, :directed, :string
    add_column :commercials, :montage, :string
  end
end
