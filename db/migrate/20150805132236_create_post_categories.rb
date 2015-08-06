class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.string :name
      t.text :description
      t.boolean :publish
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end
