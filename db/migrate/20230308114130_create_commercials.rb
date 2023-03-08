class CreateCommercials < ActiveRecord::Migration[7.0]
  def change
    create_table :commercials do |t|
      t.string :title
      t.integer :year
      t.string :company

      t.timestamps
    end
  end
end
