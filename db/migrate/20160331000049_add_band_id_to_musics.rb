class AddBandIdToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :band_id, :integer
    add_index :musics, :band_id
  end
end
