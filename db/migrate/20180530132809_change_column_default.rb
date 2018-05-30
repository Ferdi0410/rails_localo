class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :steps, :completed, from: true, to: false
  end
end
