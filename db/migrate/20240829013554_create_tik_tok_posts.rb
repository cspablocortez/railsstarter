class CreateTikTokPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :tik_tok_posts do |t|
      t.text :caption
      t.string :author
      t.integer :views
      t.integer :likes

      t.timestamps
    end
  end
end
