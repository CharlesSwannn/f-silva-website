class AddCategoryToFilms < ActiveRecord::Migration[7.0]
  def change
    add_column :films, :category, :integer, default: 0
  end
end
