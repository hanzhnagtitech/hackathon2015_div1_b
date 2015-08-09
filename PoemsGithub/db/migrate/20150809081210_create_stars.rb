class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :poems_id
      t.integer :users_id

      t.timestamps null: false
    end
  end
end
