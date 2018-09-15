class WelcomeController < ApplicationController
    def index
        @movie = OwnedMovie.first
        print @movie.description

        render "index"
    end 


end
