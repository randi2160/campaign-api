Rails.application.routes.draw do
  resources :campaigns
  resources :users, only: :create
  
  #resources :users do
 #   collection do
  #    post 'login'
  #  end
 # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
