class AddColumnStatusValueToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :status_value, :integer
  end
end
