module QueryHelper
    API_KEY = "c56abc49a96b20cd28ff3d44100a1387"
    BaseUrl = "https://api.themoviedb.org/3/search/movie?api_key=" + API_KEY + "&query="

    def api_request(search_term)
        url = URI(BaseUrl + search_term)
        print("inside api_request")
        response = HTTParty.get(url)
        response.parsed_response["results"][0]
    end 

end
