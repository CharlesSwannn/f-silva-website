class AddVimeoIdToCommercials < ActiveRecord::Migration[7.0]
  def change
    add_column :commercials, :vimeo_id, :string
  end
end
