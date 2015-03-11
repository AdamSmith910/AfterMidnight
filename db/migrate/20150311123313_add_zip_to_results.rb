class AddZipToResults < ActiveRecord::Migration
  def change
    add_column :results, :zip, :string
  end
end
