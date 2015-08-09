class RenameUsersIdColumnToUserId < ActiveRecord::Migration
  def change
   rename_column :poems, :genres_id, :genre_id
   rename_column :poems, :users_id, :user_id   
   rename_column :stars, :poems_id, :poem_id
   rename_column :stars, :users_id, :user_id
   rename_column :owners, :users_id, :user_id
   rename_column :owners, :poems_id, :poems_id
  end
end
