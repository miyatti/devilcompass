class RenameAttributeIdToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :attribute_id, :element_id
  end
end
