class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
        t.belongs_to :User
        t.belongs_to :Friend, class: 'User'
      t.timestamps null: false
    end
  end
end
