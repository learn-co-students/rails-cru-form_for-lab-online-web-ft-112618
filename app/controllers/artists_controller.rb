class ArtistsController < ApplicationController

  def finder
    @artist = Artist.find(params[:id])
  end

  def show
    finder
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    finder
  end

  def update
    finder
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
