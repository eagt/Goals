class CreateImprovements < ActiveRecord::Migration[5.1]
  def change
    create_table :improvements do |t|
      t.references :user, foreign_key: true
      t.text :improvement
      t.text :reply
      t.string :status
      t.integer :status_value
      t.datetime :set_at
      t.datetime :done_at

      t.timestamps
    end
  end
end
