class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :post_category, index: true, foreign_key: true
      t.references :author, index: true, foreign_key: true
      t.string :title
      t.string :slug, unique: true
      t.text :content
      t.string :meta
      t.string :unique_code
      t.boolean :special
      t.boolean :featured
      t.text   :resume
      t.string  :thumb
      t.boolean :publish
      t.boolean :revised
      t.references :reviser, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
