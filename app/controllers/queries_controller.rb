class QueriesController < ApplicationController
    include QueryHelper
   
    def index
        @@results
    end 
#create error messages if there's no response
    def create
        search_term = params["query"]["search_term"]
        results = api_request_results(search_term)

        #movie = OwnedMovie.create(title: response["title"], poster: response["poster_path"], description: response["overview"])

        #movie.save!

        results.each do |result|
            print result['title'] + "\n"
        end 

        @results = results


        redirect_to "/"
    end 
end
