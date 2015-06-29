class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :post_title
      t.text :post_text

      t.timestamps null: false
    end
  end
end
