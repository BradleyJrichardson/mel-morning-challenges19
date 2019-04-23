# frozen_string_literal: true

class EpisodesController < ApplicationController
  def create
    @episode = Episode.new(episode_params)

    @podcast = Podcast.find(params[:podcast_id])
    @episode = @podcast.episodes.create(episode_params)
    @episode.save
    redirect_to podcast_path(params[:podcast_id])
  end

  private

  def episode_params
    params.permit(:title, :show_notes, :mp3_file, :rating, :podcast_id, :authenticity_token, :Show_notes)
  end

  # put stuff that is not designed to be used outside so is just used for that controller.
  # for example if we have logic that we are calling againa nd again throughkut the controller then we can make a function for that and thus functional programing
end
