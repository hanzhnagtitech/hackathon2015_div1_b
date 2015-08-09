class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.integer :users_id
      t.integer :poems_id

      t.timestamps null: false
    end
  end
end
