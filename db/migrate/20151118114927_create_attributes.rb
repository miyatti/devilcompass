class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.integer :LC
      t.integer :LD
      t.text :note

      t.timestamps null: false
    end
  end
end
