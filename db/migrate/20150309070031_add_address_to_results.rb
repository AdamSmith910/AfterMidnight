class AddAddressToResults < ActiveRecord::Migration
  def change
    add_column :results, :address, :string
  end
end
