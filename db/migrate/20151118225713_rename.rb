class Rename < ActiveRecord::Migration
  def change
    rename_column :tempers, :PO, :OP
  end
end
