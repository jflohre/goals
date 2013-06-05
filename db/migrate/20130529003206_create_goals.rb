class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :user_id
      t.timestamps
    end
    add_index :goals, [:user_id, :created_at]
  end
end
