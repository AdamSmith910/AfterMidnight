class AddZipToResults < ActiveRecord::Migration
  def change
    add_column :results, :zip, :integer
  end
end
