class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.references :user_tour, foreign_key: true
      t.references :tour_attraction, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
