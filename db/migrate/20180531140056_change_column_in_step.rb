class ChangeColumnInStep < ActiveRecord::Migration[5.2]
  def change
    change_column :steps, :completed, :string
  end
end
