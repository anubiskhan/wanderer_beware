class Admin::StoriesController < Admin::BaseController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to admin_stories_path
    else
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :description)
  end
end
