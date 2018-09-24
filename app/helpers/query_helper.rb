module QueryHelper
    API_KEY = "c56abc49a96b20cd28ff3d44100a1387"
    BaseUrl = "https://api.themoviedb.org/3/search/movie?api_key=" + API_KEY + "&query="

    def api_request_results(search_term)
        url = URI(BaseUrl + search_term)
        print("inside api_request")
        #changed response to 'results'
        results = HTTParty.get(url)
        results.parsed_response["results"]
    end 

end
