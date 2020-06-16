Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :countries, only:[:index, :show]
  resources :cities, only: [:show]
  resources :activities, only:[:show]

end


# model city nested under countries => activities
# model
