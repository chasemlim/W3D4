class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :answer_choices
    drop_table :polls
    drop_table :questions
    drop_table :responses
  end
end
