class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :group_id
      t.integer :user_id
      t.string :access_level
      t.string :status, :default => "pending"

      t.timestamps null: false
    end
  end
end
