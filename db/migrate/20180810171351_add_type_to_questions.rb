class AddTypeToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :style, :string
    add_column :questions, :instructions, :text
    add_column :questions, :choices, :string
  end
end
