class AddClosesAtToResults < ActiveRecord::Migration
  def change
    add_column :results, :closes_at, :datetime
  end
end
