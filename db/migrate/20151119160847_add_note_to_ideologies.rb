class AddNoteToIdeologies < ActiveRecord::Migration
  def change
    add_column :ideologies, :note, :text
  end
end
