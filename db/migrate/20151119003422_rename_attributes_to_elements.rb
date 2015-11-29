class RenameAttributesToElements < ActiveRecord::Migration
  def change
    rename_table :attributes, :elements
  end
end
