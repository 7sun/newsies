class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)

    if @story.save
      redirect_to '/'
    else
      # instances variable existing: @story
      render :new # render new.html.erb
    end
  end

  def show
    @story = Story.find(params[:id])
  end

  # def edit
  #   @story = Story.find(params[:id])
  # end

  # def update
  #   @story = Story.find(params[:id])
  #   if @story.update(story_params)
  #     redirect_to '/'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @story = Story.find(params[:id])
  #   @story.destroy
  #   redirect_to '/'
  # end


  private

  def story_params
    params.require(:story).permit(:topic, :title, :body, :image)
  end

end
