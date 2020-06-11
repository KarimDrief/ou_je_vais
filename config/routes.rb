Rails.application.routes.draw do
  devise_for :users
  root to: 'countries#index'
  resources :countries, only:[:index, :show] do
    resources :activities, only:[:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
end
