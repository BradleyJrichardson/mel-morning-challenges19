class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end 

  def create
    @podcast = Podcast.new(podcast_params)
    if @podcast.save 
      redirect_to @podcast
    else
      render 'new'
    end
  end 

  def show
    @podcast = Podcast.new
  end 

  def show
    @podcast = Podcast.find(params[:id])
  end

  def edit
    @podcast = Podcast.find(params[:id])
  end

  def update
    @podcast = podcast.find(params[:id])

    if @podcast.update(podcast_params)
      redirect_to @podcast
    else
      render 'edit'
    end
end

private
def podcast_params
  params.permit(:title, :address, :description, :food_type)
end
end
