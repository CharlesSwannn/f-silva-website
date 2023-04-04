class AddCategoriesToFilms < ActiveRecord::Migration[7.0]
  def change
    add_column :films, :vimeo_id, :string
    add_column :films, :montage, :string
    add_column :films, :director, :string
    add_column :films, :producer, :string
  end
end
