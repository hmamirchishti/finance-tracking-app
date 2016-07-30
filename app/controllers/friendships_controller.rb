class FriendshipsController < ApplicationController

  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    if @friendship.present?
      @friendship.destroy
      respond_to do |format|
        format.html {redirect_to my_friends_path, notice: "Friend was successfully removed"}
      end
      else redirect_to my_friends_path, notice: "Error in deleting friend"
    end
  end
end