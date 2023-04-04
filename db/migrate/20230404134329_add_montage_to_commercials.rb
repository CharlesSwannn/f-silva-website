class AddMontageToCommercials < ActiveRecord::Migration[7.0]
  def change
    add_column :commercials, :montagem, :string
    add_column :commercials, :realização, :string
  end
end
