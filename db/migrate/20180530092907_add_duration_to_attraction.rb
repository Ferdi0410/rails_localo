class AddDurationToAttraction < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :duration, :integer
  end
end
