class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
