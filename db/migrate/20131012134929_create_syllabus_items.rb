class CreateSyllabusItems < ActiveRecord::Migration
  def change
    create_table :syllabus_items do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
