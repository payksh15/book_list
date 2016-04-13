class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :genre
      t.string :blacks, :default => 'false'
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
