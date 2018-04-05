class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def roll_die
    roll_die
  end

  private

  def story_params
    params.require(:story).permit(:title, :description)
  end
end
