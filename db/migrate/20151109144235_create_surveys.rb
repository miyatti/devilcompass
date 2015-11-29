class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :q01
      t.integer :q02
      t.integer :q03
      t.integer :q04
      t.integer :q05
      t.integer :q06
      t.integer :q07
      t.integer :q08
      t.integer :q09
      t.integer :q10
      t.integer :q11
      t.integer :q12
      t.integer :q13
      t.integer :q14
      t.integer :q15
      t.integer :q16
      t.integer :A
      t.integer :B
      t.integer :C
      t.integer :D
      t.string :result

      t.timestamps null: false
    end
  end
end
