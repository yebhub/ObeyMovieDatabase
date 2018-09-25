module QueryHelper
    API_KEY = ENV["API_KEY"]
    BaseUrl = "https://api.themoviedb.org/3/search/movie?api_key=" + API_KEY + "&query="

    def api_request_results(search_term)
        url = URI(BaseUrl + search_term)
        print("inside api_request")
        #changed response to 'results'
        results = HTTParty.get(url)
        results.parsed_response["results"]
    end 

end
