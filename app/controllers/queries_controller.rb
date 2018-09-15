class QueriesController < ApplicationController
    include QueryHelper
   
    def index
    end 
#create error messages if there's no response
    def create
        search_term = params["query"]["search_term"]
        response = api_request(search_term)

        movie = OwnedMovie.create(title: response["title"], poster: response["poster_path"], description: response["overview"])

        movie.save!


        redirect_to "/"
    end 
end
