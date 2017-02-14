class ChangeTodos < ActiveRecord::Migration[5.0]
  def change
    change_column :todos, :completed, :boolean, default: false
  end
end
