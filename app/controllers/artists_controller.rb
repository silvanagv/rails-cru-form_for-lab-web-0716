class ArtistsController < ApplicationController

  def new
  end

  def create
    @artist = Artist.create(artist_params)
  end

  def show
    @artist = Artist.find(params[:id])
    @artists = Artist.all
  end

  def edit
    @artist = Artist.find(artist_params)
  end

  def update
    @artist = @artist.update(artist_params)
  end

  private

  def artist_params
    params.permit(:name, :bio)
  end

end
