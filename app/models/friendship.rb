class Friendship < ActiveRecord::Base
  has_many :users
  has_many :friends, class_name: "User"
end
