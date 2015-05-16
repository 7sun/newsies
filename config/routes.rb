Rails.application.routes.draw do

  root 'stories#index'

  get '/stories/new' => 'stories#new'
  post '/stories'    => 'stories#create'
  get '/stories/:id' => 'stories#show'


end
