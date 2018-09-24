class WelcomeController < ApplicationController
    include QueryHelper

    def index
        @movie = OwnedMovie.last
        @movies = OwnedMovie.all
        @results = session[:results]

        render "index"
    end 

    def create
        print "NICE!!! \n"
        search_term = params["welcome"]["search_term"]
        @results = api_request_results(search_term)

        render "index"
    end 


end
