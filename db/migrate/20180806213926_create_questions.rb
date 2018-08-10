class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :title
      t.references :step, foreign_key: true

      t.timestamps
    end
    add_index :steps, [:id, :created_at]
  end
end
