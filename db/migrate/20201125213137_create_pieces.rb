class CreatePieces < ActiveRecord::Migration[6.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :artist
      t.string :description
      t.string :location
    end
  end
end
