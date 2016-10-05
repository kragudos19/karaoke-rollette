class Api::ArtistsController < ApplicationController

  def index
    puts "#{params.inspect} ==========================================="

    if params[:artist_name]
       @artists = RSpotify::Artist.search(params[:artist_name])
       render json: @artists.to_json
     # else
     #   redirect_to root_path
    end
  end

 def show
  @artist = RSpotify::Artist.find(params[:id])
end
end
