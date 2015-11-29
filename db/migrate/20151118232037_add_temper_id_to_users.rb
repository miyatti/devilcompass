class AddTemperIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :temper_id, :integer
  end
end
