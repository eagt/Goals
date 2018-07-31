class AddShowButtonToList < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :showButton, :string
  end
end
