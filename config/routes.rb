Rails.application.routes.draw do
  devise_for :users
  root to: 'countries#index'
  resources :countries, only:[:index, :show] do
    resources :activities, only:[:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
 resources :activities, only:[:show]
end


# model city nested under countries => activities
# model
