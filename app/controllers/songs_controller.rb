class SongsController < ApplicationController

  def index

  end
  
  def finder
    @song = Song.find(params[:id])
  end

  def show
    finder
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    finder
  end

  def update
    finder
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
