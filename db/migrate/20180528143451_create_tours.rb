class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :title
      t.integer :duration
      t.string :photo
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
