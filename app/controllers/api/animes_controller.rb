class Api::AnimesController < ApplicationController
  respond_to :json
  def index
    @animes = Anime.all
    render json: @animes
  end

  private
    def anime_params
      params.require(:anime).permit(:title, :creator)
    end
end
