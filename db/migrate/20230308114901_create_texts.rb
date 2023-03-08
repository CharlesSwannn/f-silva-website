class CreateTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :texts do |t|
      t.string :type
      t.string :title
      t.string :content
      t.string :year

      t.timestamps
    end
  end
end
