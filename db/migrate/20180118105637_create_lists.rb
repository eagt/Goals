class CreateLists < ActiveRecord::Migration[5.1]
  def up
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.datetime :set_at
      t.datetime :deadline_at
      t.datetime :done_at
      t.string :status

      t.timestamps
    end
  end


    def down
    drop_table :lists do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.datetime :set_at
      t.datetime :deadline_at
      t.datetime :done_at
      t.string :status

      t.timestamps
    end
  end
end
