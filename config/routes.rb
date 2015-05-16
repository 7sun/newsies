Rails.application.routes.draw do

  root 'stories#index'
  resources :stories
  resources :photos

  get '/stories/random' => 'stories#random', as: 'random'

  get 'random_dog' => 'dogs#random', as: 'rando_dogz'

end
