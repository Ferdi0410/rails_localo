class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :title
      t.string :photo
      t.string :address
      t.string :status
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
