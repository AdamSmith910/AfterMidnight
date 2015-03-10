class AddStateToResults < ActiveRecord::Migration
  def change
    add_column :results, :state, :string
  end
end
