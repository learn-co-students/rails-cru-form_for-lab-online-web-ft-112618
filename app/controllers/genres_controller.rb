class GenresController < ApplicationController
  before_action :find_object, only: %i(show edit update destroy)

  def index
    @genres = Genre.all
  end

  def show
  end

  def edit
  end

  def update
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def destroy
    @genre.destroy
    redirect_to genres_path
  end

  private

  def find_object
    @genre = Genre.find_by_id(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name, :bio)
  end
end
