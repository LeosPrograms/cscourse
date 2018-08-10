class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :title
      t.string :media
      t.references :chapter, foreign_key: true

      t.timestamps
    end
    add_index :chapters, [:chapter_id, :created_at]
  end
end
