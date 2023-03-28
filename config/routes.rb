Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'sign_up' => 'users#new'
  post 'sign_up' => 'users#create'

  get 'sign_in' => 'sessions#new'
  post 'sign_in' => 'sessions#create', as: 'login'
  delete 'logout' => 'sessions#destroy'
end

