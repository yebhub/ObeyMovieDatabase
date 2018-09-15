class QueriesController < ApplicationController
    include QueryHelper
   
    def index
    end 

    def create
        search_term = params["query"]["search_term"]
        response = api_request(search_term)

        Movie.create(title: response["title"], poster: response["poster_path"], description: response["overview"])

        redirect_to "/"
    end 
end
