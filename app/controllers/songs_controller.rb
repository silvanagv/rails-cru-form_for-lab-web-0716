class SongsController < ApplicationController

    def index
      @songs = Song.all
    end

    def new

    end

    def create
      @song = Song.create(song_params)
      redirect_to song_path(@song)

    end

    def show
      @song =Song.find(params[:id])
      @songs = Song.all
      @genre = @song.genre
      @artist = @song.artist
    end

    def edit
      @song = Song.find(params[:id])
    end

    def update
      @song = Song.update(song_params)
      redirect_to song_path(@song)

    end

    private

    def song_params
      params.permit(:name)
    end


end
