class AddAudioToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :audio, :string
  end
end
