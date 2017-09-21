Rails.application.routes.draw do
  resources :trackers

  # I seem to have to keep these here to get tests to continue to work:
  get 'trackers/new'
  get 'trackers/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
