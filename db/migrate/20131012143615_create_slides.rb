class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title, null: false
      t.text   :content, null: false

      t.integer :tutorial_id, null: false

      t.timestamps
    end
  end
end
