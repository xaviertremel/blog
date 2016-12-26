class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :image_url
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
