class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :musical_genre
      t.string :site

      t.timestamps null: false
    end
  end
end
