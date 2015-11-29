class AddIdeologyIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ideology_id, :integer
  end
end
