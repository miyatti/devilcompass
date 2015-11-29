class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :type
      t.integer :aspect

      t.timestamps null: false
    end
  end
end
