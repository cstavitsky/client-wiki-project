class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :article_id
      t.integer :author_id
      t.string :title
      t.text :body
      t.string :privacy_level

      t.timestamps null: false
    end
  end
end
