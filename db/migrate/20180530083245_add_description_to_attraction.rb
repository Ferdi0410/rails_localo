class AddDescriptionToAttraction < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :description, :text
  end
end
