class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string  :title,            null: false
      t.text    :description,      null: false

      t.integer :author_id,        null: false
      t.integer :syllabus_item_id, null: false

      t.timestamps
      t.datetime :published_at, null: true
    end
  end
end
