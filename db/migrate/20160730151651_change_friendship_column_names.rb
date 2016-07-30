class ChangeFriendshipColumnNames < ActiveRecord::Migration
  def change
    rename_column :friendships, :Friend_id, :friend_id
    rename_column :friendships, :User_id, :user_id
  end
end
