Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/books' => 'books#new'
  get '/' => 'homes#top'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show'
end
