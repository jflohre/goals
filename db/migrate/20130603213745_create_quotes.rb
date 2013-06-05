class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
