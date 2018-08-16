class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :title
      t.text :instructions
      t.string :media
      t.string :media2
      t.references :chapter, foreign_key: true

      t.timestamps
    end
    add_index :chapters, [:id, :created_at]
  end
end
