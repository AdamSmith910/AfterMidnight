class AddStreetToResults < ActiveRecord::Migration
  def change
    add_column :results, :street, :string
  end
end
