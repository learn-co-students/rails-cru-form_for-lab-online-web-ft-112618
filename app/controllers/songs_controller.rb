class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(name: params.require(:song).permit(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find_by(id: params[:id])
        @genre = @song.genre
        @artist = @song.artist
    end

    def edit
        @song = Song.find_by(id: params[:id])
    end

    def update
        @song = Song.find_by(id: params[:id])
        @song = Song.update(name: params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
    
end
