Rails.application.routes.draw do
  resources :trackers

  post '/trackers/new',  to: 'trackers#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
