class CreateTourAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_attractions do |t|
      t.references :tour, foreign_key: true
      t.references :attraction, foreign_key: true

      t.timestamps
    end
  end
end
