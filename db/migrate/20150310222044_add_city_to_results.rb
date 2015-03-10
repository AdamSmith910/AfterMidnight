class AddCityToResults < ActiveRecord::Migration
  def change
    add_column :results, :city, :string
  end
end
