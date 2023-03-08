class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :description
      t.integer :year
      t.string :festivals
      t.string :awards

      t.timestamps
    end
  end
end
