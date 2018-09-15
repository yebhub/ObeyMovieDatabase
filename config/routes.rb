Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post '/movie-query' => 'queries#create'

    root 'welcome#index'
end
