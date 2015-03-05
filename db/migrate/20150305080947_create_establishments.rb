class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.boolean :open?
      t.integer :distance
      t.string :name

      t.timestamps null: false
    end
  end
end
