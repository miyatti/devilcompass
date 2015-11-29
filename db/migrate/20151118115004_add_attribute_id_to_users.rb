class AddAttributeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attribute_id, :integer
  end
end
