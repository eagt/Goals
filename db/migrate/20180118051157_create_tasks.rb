class CreateTasks < ActiveRecord::Migration[5.1]
  def up
    create_table :tasks do |t|
      t.references :list, foreign_key: true
      t.string :name
      t.datetime :set_at
      t.datetime :deadline_at
      t.datetime :done_at
      t.datetime :last_updated
      t.string :status

      t.timestamps
    end
  end

    def down
    drop_table :tasks do |t|
      t.references :list, foreign_key: true
      t.string :name
      t.datetime :set_at
      t.datetime :deadline_at
      t.datetime :done_at
      t.datetime :last_updated
      t.string :status

      t.timestamps
    end
  end
end
