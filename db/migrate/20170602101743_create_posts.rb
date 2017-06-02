class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string   "title"
      t.string   "author"
      t.text     "content"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
