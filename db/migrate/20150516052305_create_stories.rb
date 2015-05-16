class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :topic
      t.string :title
      t.string :body
      t.string :image

      t.timestamps null: false
    end
  end
end
