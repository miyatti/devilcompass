class ChangeATypeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :A, :float
    change_column :users, :B, :float
    change_column :users, :C, :float
    change_column :users, :D, :float
  end
end
