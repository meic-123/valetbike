Rails.application.routes.draw do
  devise_for :users
  root "home_page#index"


  get 'past_trips/index'
  get 'active_trip/index'
  get 'payment_information/index'
  get 'account/index'
  get 'membership', to: 'home_page#membership'
  get 'howitworks', to: 'home_page#howitworks'
  get 'about', to: 'home_page#about'
  get 'contactus', to: 'home_page#contactus'
  get 'map', to: 'home_page#map'
  get "/stations/:id", to: "stations#show", as: :station
  get "/bikes", to: "bikes#index"
  get "/bikes/:id", to: "bikes#show", as: :bike

  get"/stations", to: "stations#index"
end
