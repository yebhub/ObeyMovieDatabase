class OwnedMoviesController < ApplicationController
    include UnownedMoviesHelper

    def index
        @movies = OwnedMovie.all.sort_by {|movie| movie.title}
        render "index"
    end 

    def show

    end 

    def create
        response = apiFindmovie(params[:id])
        OwnedMovie.create!(title: response["title"], poster: response["poster_path"], description: response["overview"])

        redirect_to "/index"
    end 
end

