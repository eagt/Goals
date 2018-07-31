class AddPublishedAtToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :published_at, :datetime
  end
end
