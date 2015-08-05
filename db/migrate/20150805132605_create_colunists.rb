class CreateColunists < ActiveRecord::Migration
  def change
    create_table :colunists do |t|
      t.string :title
      t.text :description
      t.references :author, index: true, foreign_key: true
      t.boolean :publish

      t.timestamps null: false
    end
  end
end
