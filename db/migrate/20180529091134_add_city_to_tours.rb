class AddCityToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :city, :string
  end
end
