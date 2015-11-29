class CreateTempers < ActiveRecord::Migration
  def change
    create_table :tempers do |t|
      t.string :name
      t.integer :PV
      t.integer :PO
      t.text :note

      t.timestamps null: false
    end
  end
end
