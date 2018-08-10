class CreateChapters < ActiveRecord::Migration[5.1]
  def change
		# drop_table :chapters
    create_table :chapters do |t|
      t.string :title

      t.timestamps
    end
  end
end
