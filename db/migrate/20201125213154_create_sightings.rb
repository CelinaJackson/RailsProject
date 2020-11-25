class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.string :title 
      t.string :location
      t.string :description
      t.integer :user_id 
    end
  end
end
