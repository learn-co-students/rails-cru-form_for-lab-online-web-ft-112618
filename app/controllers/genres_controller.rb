class GenresController < ApplicationController

  def finder
    @genre = Genre.find(params[:id])
  end

  def show
    finder
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    finder
  end

  def update
    finder
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
