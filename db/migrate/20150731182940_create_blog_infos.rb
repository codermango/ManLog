class CreateBlogInfos < ActiveRecord::Migration
  def change
    create_table :blog_infos do |t|
      t.string :subtitle
      t.string :about
      t.string :friendlinks
      t.string :links

      t.timestamps null: false
    end
  end
end
