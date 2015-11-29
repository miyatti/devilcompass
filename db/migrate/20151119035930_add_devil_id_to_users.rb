class AddDevilIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :devil_id, :integer
  end
end
