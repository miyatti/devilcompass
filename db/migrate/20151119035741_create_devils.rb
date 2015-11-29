class CreateDevils < ActiveRecord::Migration
  def change
    create_table :devils do |t|
      t.string :name
      t.integer :LC
      t.integer :LD
      t.integer :PV
      t.integer :OP
      t.text :note

      t.timestamps null: false
    end
  end
end
