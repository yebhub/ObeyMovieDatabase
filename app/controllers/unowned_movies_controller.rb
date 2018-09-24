class UnownedMoviesController < ApplicationController
    include UnownedMoviesHelper

    def index
    end 

    def show
        @movie = apiFindmovie(params[:id])

        render "show"
    end 


end
