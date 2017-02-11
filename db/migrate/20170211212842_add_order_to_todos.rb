class AddOrderToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :order, :integer, index: true
  end
end
