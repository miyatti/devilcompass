class AddNotesToIdeologies < ActiveRecord::Migration
  def change
    add_column :ideologies, :NoteA, :text
    add_column :ideologies, :NoteB, :text
    add_column :ideologies, :NoteC, :text
    add_column :ideologies, :NoteD, :text
  end
end
