class AddNameToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :name, :text
  end
end
