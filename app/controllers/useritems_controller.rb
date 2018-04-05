class UseritemsController < ApplicationController
  def create
    story = Story.find(params[:story_id])
    UserItem.create(user_id: current_user.id, item_id: story.items[rand(story.items.length)].id)
    redirect_to user_path(current_user)
  end

  private

  def useritem_params
    params.require(:useritem).permit(:story_id)
  end
end
