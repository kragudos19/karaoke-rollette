class Api::PlaylistsController < ApplicationController
  # before_action :set_playlist
  before_action :set_user

  def index
    puts request.headers.inspect
    puts request.headers['uid']
    render json: @user.playlist.to_json(include: [:songs, :user])
  end

  def destroy
    # User cannot destroy their playlist, they can only delete songs and empty playlist
  end

  private
  def set_playlist
    @playlist = user_playlist(current_user)
  end

end
