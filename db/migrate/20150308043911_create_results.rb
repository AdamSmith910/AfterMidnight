class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.integer :distance
      t.boolean :open

      t.timestamps null: false
    end
  end
end
