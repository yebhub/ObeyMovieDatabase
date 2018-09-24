module UnownedMoviesHelper
    API_KEY = "c56abc49a96b20cd28ff3d44100a1387"
    BaseUrl_first = "https://api.themoviedb.org/3/movie/" 
    BaseUrl_second = "?api_key=" + API_KEY + "&language=en-US"

    def apiFindmovie(id)
        url = URI(BaseUrl_first + id + BaseUrl_second)
        print("inside api_request")
        #changed response to 'results'
        result = HTTParty.get(url)
        return result
    end 
end



