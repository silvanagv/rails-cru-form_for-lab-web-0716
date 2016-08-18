class GenresController < ApplicationController


    def new
    end

    def create
      @genre = Genre.create(genre_params)
    end

    def show
      @genre = Genre.find(params[:id])
      @genres = Genre.all
    end

    def edit
      @genre= Genre.find(params[:id])
    end

    def update
      @genre = Genre.find(params[:id])
      @genre= @genre.update(genre_params)
    end

    private

    def genre_params
      params.permit(:name)
    end

end
