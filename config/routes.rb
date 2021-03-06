Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post '/movie-query' => 'queries#create'
    post '/search' => 'welcome#create'
    get '/search' => 'welcome#index'

    get'/unowned/show/:id' => 'unowned_movies#show'

    get '/owned/add/:id'   => 'owned_movies#create'
    get '/index' => 'owned_movies#index'

    root 'welcome#index'
end
