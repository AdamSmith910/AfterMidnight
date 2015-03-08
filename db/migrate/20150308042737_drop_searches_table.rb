class DropSearchesTable < ActiveRecord::Migration
  def change
    drop_table :searches
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
