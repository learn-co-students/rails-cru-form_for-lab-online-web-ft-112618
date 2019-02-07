class SongsController < ApplicationController
  before_action :find_object, only: %i(show edit update destroy)

  def index
    @songs = Song.all
  end

  def show
  end

  def edit
  end

  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private

  def find_object
    @song = Song.find_by_id(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
