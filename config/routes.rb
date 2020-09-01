Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get "/static/:page" => "static#show"
  get "/calendar/:page" => "calendar#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end

  root 'home#index'
end
