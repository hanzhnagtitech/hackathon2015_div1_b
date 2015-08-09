class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :title
      t.string :content
      t.boolean :is_wait
      t.boolean :is_active
      t.boolean :is_selected
      t.integer :genres_id
      t.integer :users_id
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
