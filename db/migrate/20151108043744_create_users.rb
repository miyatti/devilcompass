class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :A
      t.integer :B
      t.integer :C
      t.integer :D

      t.timestamps null: false
    end
  end
end
