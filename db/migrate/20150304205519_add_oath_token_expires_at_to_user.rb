class AddOathTokenExpiresAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :oath_token_expires_at, :datetime
  end
end
